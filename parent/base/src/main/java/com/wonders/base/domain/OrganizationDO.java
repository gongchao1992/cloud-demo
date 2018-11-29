package com.wonders.base.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.wonders.core.domain.TreeEntity;

import javax.persistence.*;

@Entity
@Table(name = "T_SYS_ORGAN")
public class OrganizationDO extends TreeEntity {

    private static final long serialVersionUID = -7076501359333309712L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "name",nullable = false)
    private String name;

    @Column(name = "en_name")
    private String enName;

    @Column(name = "type", nullable = false)
    private String type;

    @Column(name = "address")
    private String address;

    @Column(name = "contact_tel")
    private String contactTel;

    @Column(name = "remark")
    private String remark;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    private OrganizationDO parent;

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

    public String getEnName() {
        return enName;
    }

    public void setEnName(String enName) {
        this.enName = enName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContactTel() {
        return contactTel;
    }

    public void setContactTel(String contactTel) {
        this.contactTel = contactTel;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public OrganizationDO getParent() {
        return parent;
    }

    public void setParent(OrganizationDO parent) {
        this.parent = parent;
    }
}
