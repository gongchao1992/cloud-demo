package com.wonders.core.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.wonders.common.context.TokenHandler;
import org.apache.commons.lang3.StringUtils;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * tree 基础信息
 * @author youlian.fei
 */
@MappedSuperclass
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class TreeEntity extends BaseEntity {

    private static final long serialVersionUID = -435398004960496137L;

    @Column(name = "node_path")
    private String nodePath;// 记录当前节点父节点信息，从根节点开始，如： 1-2-13

    public String getNodePath() {
        return nodePath;
    }

    public void setNodePath(String nodePath) {
        this.nodePath = nodePath;
    }

    @PrePersist
    public void prePersist() {
        if (this.getNodePath() == null) {
            this.setNodePath("0");// 根节点父id为0
        }
        this.setCreatedTime(new Date());
        this.setCreatedBy(TokenHandler.getUserID());
    }

    @JsonIgnore
    public List<Long> getNodePathIds() {
        if (getNodePath() == null) {
            return null;
        }
        String[] idstrs = StringUtils.split(getNodePath(), "-");
        List<Long> ids = new ArrayList<>();
        for (int i = 0; i < idstrs.length; i++) {
            ids.add(Long.parseLong(idstrs[i]));
        }
        return ids;
    }

    /**
     * 返回父节点ID
     * @return
     */
    @Transient
    @JsonIgnore
    public String getPId() {
        if (getNodePath() == null) {
            return null;
        }
        String[] arr = getNodePath().split("-");
        return arr[arr.length - 1];
    }
}
