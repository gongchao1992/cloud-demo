package com.wonders.core.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.persistence.EntityManager;
import java.io.Serializable;
import java.util.Map;

/**
 * 自定义jpa扩展
 * @author youlian.fei
 * @param <T>
 * @param <ID>
 */
public interface BaseRepository<T, ID extends Serializable> extends JpaRepository<T, ID> {

	EntityManager getEntityManager();

	Page<T> findAll(Map<String, Object> params, Pageable pageable);

	int deleteByIds(Iterable<ID> ids);

}