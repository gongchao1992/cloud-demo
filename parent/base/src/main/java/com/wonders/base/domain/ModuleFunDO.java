package com.wonders.base.domain;

import com.wonders.core.domain.BaseEntity;
import com.wonders.core.domain.TreeEntity;

import javax.persistence.*;

@Entity
@Table(name = "T_SYS_MODULE_FUN")
public class ModuleFunDO extends TreeEntity {


    private static final long serialVersionUID = 2002843491411646323L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "code",nullable = false)
    private String code;

    @Column(name = "name",nullable = false)
    private String name;

    @Column(name = "url")
    private String url;

    @Column(name = "order_num")
    private Integer orderNum;

    @Column(name = "remark")
    private String remark;

    @ManyToOne(fetch = FetchType.LAZY)
    private ModuleDO parent;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public ModuleDO getParent() {
        return parent;
    }

    public void setParent(ModuleDO parent) {
        this.parent = parent;
    }
}
