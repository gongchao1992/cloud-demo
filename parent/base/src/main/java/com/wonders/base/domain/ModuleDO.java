package com.wonders.base.domain;

import com.wonders.core.domain.TreeEntity;

import javax.persistence.*;

@Entity
@Table(name = "T_SYS_MODULE")
public class ModuleDO extends TreeEntity {
    private static final long serialVersionUID = -9034457200219802438L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @Column(name = "path")
    private String path;

    @Column(name = "title")
    private String title;

    @Column(name = "hide_in_breadd", nullable = false)
    private String hideInBreadd;

    @Column(name = "hide_in_menu", nullable = false)
    private String hideInMenu;

    @Column(name = "not_cache", nullable = false)
    private String notCache;

    @Column(name = "access", nullable = false)
    private String access;

    @Column(name = "icon")
    private String icon;

    @Column(name = "close_confirm")
    private String closeConfirm;

    @Column(name = "order_num")
    private Integer orderNum;

    @Column(name = "remark")
    private String remark;

    @ManyToOne(fetch = FetchType.LAZY)
    private ModuleDO parent;

    @ManyToOne(fetch = FetchType.LAZY)
    private SubSystemDO subSystem;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHideInBreadd() {
        return hideInBreadd;
    }

    public void setHideInBreadd(String hideInBreadd) {
        this.hideInBreadd = hideInBreadd;
    }

    public String getHideInMenu() {
        return hideInMenu;
    }

    public void setHideInMenu(String hideInMenu) {
        this.hideInMenu = hideInMenu;
    }

    public String getNotCache() {
        return notCache;
    }

    public void setNotCache(String notCache) {
        this.notCache = notCache;
    }

    public String getAccess() {
        return access;
    }

    public void setAccess(String access) {
        this.access = access;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getCloseConfirm() {
        return closeConfirm;
    }

    public void setCloseConfirm(String closeConfirm) {
        this.closeConfirm = closeConfirm;
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

    public SubSystemDO getSubSystem() {
        return subSystem;
    }

    public void setSubSystem(SubSystemDO subSystem) {
        this.subSystem = subSystem;
    }
}
