package com.wonders.base.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.wonders.core.domain.BaseEntity;

import javax.persistence.*;

@Entity
@Table(name = "T_SYS_USER")
public class UserDO extends BaseEntity {

    private static final long serialVersionUID = 4969965976967449529L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "name", nullable = false, unique = true)
    private String name;//登录名

    @Column(name = "real_name", nullable = false)
    private String realName;//正是姓名

    @JsonIgnore
    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "status", nullable = false)
    private String status;

    @Column(name = "remark")
    private String remark;

    @ManyToOne(fetch = FetchType.LAZY)
    private OrganizationDO organization;

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

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public OrganizationDO getOrganization() {
        return organization;
    }

    public void setOrganization(OrganizationDO organization) {
        this.organization = organization;
    }

}
