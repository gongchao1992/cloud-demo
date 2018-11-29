package com.wonders.base.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "T_SYS_DICT")
public class DictDO implements Serializable {
    private static final long serialVersionUID = 2652730226151012796L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "calzz",nullable = false)
    private String clazz;

    @Column(name = "field",nullable = false)
    private String field;

    @Column(name = "key_",nullable = false)
    private String key;

    @Column(name = "value_",nullable = false)
    private String value;

    @Column(name = "order_num")
    private Integer orderNum;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getClazz() {
        return clazz;
    }

    public void setClazz(String clazz) {
        this.clazz = clazz;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Integer getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }
}
