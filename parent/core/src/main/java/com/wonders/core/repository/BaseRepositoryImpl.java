package com.wonders.core.repository;

import com.wonders.core.constanst.SqlEnum;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.reflect.MethodUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.*;
import javax.transaction.Transactional;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.*;

import static org.apache.commons.lang3.StringUtils.split;
import static org.apache.commons.lang3.StringUtils.substringBefore;
import static org.springframework.data.jpa.repository.query.QueryUtils.toOrders;

@NoRepositoryBean
public class BaseRepositoryImpl<T, ID extends Serializable> extends SimpleJpaRepository<T, ID> implements BaseRepository<T, ID> {

    private final EntityManager em;

    private final Class<T> domainClass;

    public BaseRepositoryImpl(Class<T> domainClass, EntityManager em) {
        super(domainClass, em);
        this.em = em;
        this.domainClass = domainClass;
    }

    @Override
    public EntityManager getEntityManager() {
        return null;
    }

    @Override
    public Page<T> findAll(Map<String, Object> params, Pageable pageable) {
        params = getSearchParams(params);
        TypedQuery<Long> countQuery = getCountQuery(params, null);
        Long total = countQuery.getSingleResult();

        TypedQuery<T> query = getQuery(params, pageable.getSort(), null);
        query.setFirstResult((int) pageable.getOffset());
        query.setMaxResults(pageable.getPageSize());

        List<T> content = total > pageable.getOffset() ? query.getResultList() : Collections.<T> emptyList();

        return new PageImpl<T>(content, pageable, total);
    }

    @Override
    @Transactional
    public int deleteByIds(Iterable<ID> ids) {
        Query query = em.createQuery("DELETE FROM " + domainClass.getName()+ " WHERE id IN ?1");
        query.setParameter(1, ids);
        int  res = query.executeUpdate();
        return res;
    }


    private TypedQuery<Long> getCountQuery(Map<String, Object> params, JoinManager joinManager) {
        CriteriaBuilder builder = em.getCriteriaBuilder();
        CriteriaQuery<Long> query = builder.createQuery(Long.class);
        Root<T> root = query.from(domainClass);
        Map<String, Join<T, ?>> joinMap = buildJoinMap(root, joinManager);

        query.select(builder.count(root));

        applySearchParamsToCriteria(params, query, joinMap);
        return em.createQuery(query);
    }


    private TypedQuery<T> getQuery(Map<String, Object> params, Sort sort, JoinManager joinManager) {
        CriteriaBuilder builder = em.getCriteriaBuilder();
        CriteriaQuery<T> query = builder.createQuery(domainClass);
        Root<T> root = query.from(domainClass);

        Map<String, Join<T, ?>> joinMap = buildJoinMap(root, joinManager);

        query.select(root);

        applySearchParamsToCriteria(params, query, joinMap);

        if (sort != null) {
            query.orderBy(toOrders(sort, root, builder));
        }else{
            query.orderBy(toOrders(Sort.by(Sort.Direction.valueOf("DESC"),"id"), root, builder));
        }
        return em.createQuery(query);
    }

    private Map<String, Join<T, ?>> buildJoinMap(Root<T> root, JoinManager joinManager){
        Map<String, Join<T, ?>> joinMap = null;
        if (joinManager != null) {
            joinMap = new HashMap();
            //object
            if (JoinManager.ObjType.ENTITY.equals(joinManager.getObjType())) {
                joinMap.put(joinManager.getKey(), root.join(joinManager.getKey(), joinManager.getJoinType()));
                //set
            } else if (JoinManager.ObjType.SET.equals(joinManager.getObjType())) {
                joinMap.put(joinManager.getKey(), root.joinSet(joinManager.getKey(), joinManager.getJoinType()));
                //list
            } else if (JoinManager.ObjType.LIST.equals(joinManager.getObjType())) {
                joinMap.put(joinManager.getKey(), root.joinList(joinManager.getKey(), joinManager.getJoinType()));
                //map
            } else if (JoinManager.ObjType.MAP.equals(joinManager.getObjType())) {
                joinMap.put(joinManager.getKey(), root.joinMap(joinManager.getKey(), joinManager.getJoinType()));
            }
        }
        return joinMap;
    }

    private  <S> void applySearchParamsToCriteria(Map<String, Object> params, CriteriaQuery<S> query, Map<String, Join<T, ?>> map) {
        if (null == params || params.isEmpty()) {
            return;
        }
        CriteriaBuilder builder = em.getCriteriaBuilder();

        Root<T> root = (Root<T>) query.getRoots().iterator().next();

        List<Predicate> predicates = new ArrayList<>();

        for (String key : params.keySet()) {
            //field name
            String name = substringBefore(key, "_");
            // eq like ..
            String operator = key.substring(key.lastIndexOf("_") + 1);
            // field value
            Object value = params.get(key);
            try {
                predicates.add(buildPredicate(builder, root, name, operator, value, map));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (!predicates.isEmpty()) {
            query.where(predicates.toArray(new Predicate[predicates.size()]));
        }
    }


    private Predicate buildPredicate(CriteriaBuilder builder, Root<T> root,
                                    String name, String operator, Object val, Map<String, Join<T, ?>> joinMap) throws Exception {
        Path path = null;
        String[] names = split(name, ".");
        if (names.length != 0) {
            if (joinMap != null && joinMap.get(names[0]) != null) {
                Join<T, ?> join = joinMap.get(names[0]);
                for (int i = 1; i < names.length; i++) {
                    path = join.get(names[i]);
                }
            } else {
                path = root.get(names[0]);
                for (int i = 1; i < names.length; i++) {
                    path = path.get(names[i]);
                }
            }
        } else {
            path = root.get(name);
        }
        //转大写
        operator = operator.toUpperCase();
        if (SqlEnum.EQ.name().equals(operator)) {
            return builder.equal(path, val);
        } else if (SqlEnum.ISNULL.name().equals(operator)) {
            return builder.isNull(path);
        } else if (SqlEnum.LIKE.name().equals(operator)) {
            return builder.like(path, "%" + val + "%");
        } else if (SqlEnum.LIKER.name().equals(operator)) {
            return builder.like(path, val + "%");
        } else if (SqlEnum.LIKEL.name().equals(operator)) {
            return builder.like(path, "%" + val);
        } else if (SqlEnum.GT.name().equals(operator)) {
            return builder.greaterThan(path, (Comparable) val);
        } else if (SqlEnum.LT.name().equals(operator)) {
            return builder.lessThan(path, (Comparable) val);
        } else if (SqlEnum.GE.name().equals(operator)) {
            return builder.greaterThanOrEqualTo(path, (Comparable) val);
        } else if (SqlEnum.LE.name().equals(operator)) {
            return builder.lessThanOrEqualTo(path, (Comparable) val);
        } else if (SqlEnum.SGT.name().equals(operator)) {
            return builder.greaterThan(path, (Comparable) val);
        } else if (SqlEnum.SLT.name().equals(operator)) {
            return builder.lessThan(path, (Comparable) val);
        } else if (SqlEnum.SGE.name().equals(operator)) {
            return builder.greaterThanOrEqualTo(path, (Comparable) val);
        } else if (SqlEnum.SLE.name().equals(operator)) {
            return builder.lessThanOrEqualTo(path, (Comparable) val);
        } else if (SqlEnum.DGT.name().equals(operator)) {
            val = val + " 00:00:00";
            return builder.greaterThan(path, DateUtils.parseDate(val.toString(), "yyyy-MM-dd HH:mm:ss"));
        } else if (SqlEnum.DLT.name().equals(operator)) {
            val = val + " 23:59:59";
            return builder.lessThan(path, DateUtils.parseDate(val.toString(), "yyyy-MM-dd HH:mm:ss"));
        } else if (SqlEnum.DGE.name().equals(operator)) {
            val = val + " 00:00:00";
            return builder.greaterThanOrEqualTo(path, DateUtils.parseDate(val.toString(), "yyyy-MM-dd HH:mm:ss"));
        } else if (SqlEnum.DLE.name().equals(operator)) {
            val = val + " 23:59:59";
            return builder.lessThanOrEqualTo(path, DateUtils.parseDate(val.toString(), "yyyy-MM-dd HH:mm:ss"));
        } else if (SqlEnum.IN.name().equals(operator)) {
            CriteriaBuilder.In<Object> in = builder.in(path);
            String[] vs = StringUtils.split((String) val, ',');
            for (int i = 0; i < vs.length; i++) {
                in.value(vs[i]);
            }
            return in;
        } else if (SqlEnum.NE.name().equals(operator)) {
            return builder.notEqual(path, val);
        }
        return (Predicate) MethodUtils.invokeMethod(builder, operator, path, val);
    }



    private static final String SEARCH_PREFIX = "search_";

    private Map<String, Object> getSearchParams(Map<String, Object> params) {
        Map<String, Object> filters = new HashMap<>();
        for (String key : params.keySet()) {
            if (StringUtils.startsWith(key, SEARCH_PREFIX)) {
                String name = StringUtils.substringAfter(key, SEARCH_PREFIX);
                Object value = params.get(key);
                try {
                    value = URLDecoder.decode(value.toString(), "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }

                if (null != value && StringUtils.isNotBlank(value.toString())) {
                    filters.put(name, value);
                }
            }
        }
        return filters;
    }


}
