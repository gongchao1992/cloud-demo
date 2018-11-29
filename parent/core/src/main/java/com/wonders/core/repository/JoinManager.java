package com.wonders.core.repository;

import javax.persistence.criteria.JoinType;

public class JoinManager {

	static enum  ObjType{
		ENTITY,MAP,SET,LIST;
		ObjType() {
		}
	}

	private String key;       //join对象的别名
	private ObjType objType;    //对象类型（1：Object、2：Set、3：List、4：Map）
    private JoinType joinType;      //join类型
    /**
     * 
     * @param key：join对象的别名
     * @param objType：对象类型（Object、Set、List、Map）
     * @param joinType：join类型  
     */
    public JoinManager(String key, ObjType objType, JoinType joinType){
    	this.key = key;
    	this.objType = objType;
    	this.joinType = joinType;
    }

	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public ObjType getObjType() {
		return objType;
	}
	public void setObjType(ObjType objType) {
		this.objType = objType;
	}
	public void setJoinType(JoinType joinType) {
		this.joinType = joinType;
	}
	public JoinType getJoinType() {
		return joinType;
	}
}