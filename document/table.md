<!-- TOC -->

- [1. 权限系统表设计](#1-权限系统表设计)
    - [1.1. 基础属性](#11-基础属性)
    - [1.2. tree属性](#12-tree属性)
    - [1.3. 字典表](#13-字典表)
    - [1.4. 机构表](#14-机构表)
    - [1.5. 部门表](#15-部门表)
    - [1.6. 用户表](#16-用户表)
    - [1.7. 角色表](#17-角色表)
    - [1.8. 子系统](#18-子系统)
    - [1.9. 菜单模块表](#19-菜单模块表)
    - [1.10. 模块功能表](#110-模块功能表)
    - [1.11. 用户部门关联表](#111-用户部门关联表)
    - [1.12. 用户角色关联表](#112-用户角色关联表)
    - [1.13. 角色功能关联表](#113-角色功能关联表)

<!-- /TOC -->


# 1. 权限系统表设计

## 1.1. 基础属性

- 类名：`BaseEntity`
- 表名：无

|列名|java类型|默认值|说明|
|----|----|----|----|
|createdBy|Long||创建人id|
|createdTime|Date|系统时间|创建时间|
|lastModifiedBy|Long||最新修改人id|
|lastModifiedTime|Date|系统时间|最新修改时间|
|field1|String||备用字段1|
|field2|String||备用字段2|
|field3|String||备用字段3|


## 1.2. tree属性

- 类名：`TreeEntity`
- 表名：无


|列名|java类型|默认值|说明|
|----|----|----|----|
|nodePath|String||记录当前节点父节点信息，从根节点开始，如： 11-23-13, 根节点父id为0|


## 1.3. 字典表

- 类名：`Dictionary`
- 表名：`T_SYS_DICT`

|列名|java类型|默认值|说明|
|----|----|----|----|
|id|Long||主键|
|clazz|String|非空|所属类名|
|field|String|非空|对应字段名|
|key|String|非空|对应的键|
|value|String|非空|对应的值|
|orderNum|String||排序|

## 1.4. 机构表

- 类名：`Organization`
- 表名：`T_SYS_ORGAN`
- 基本属性： `BaseEntity`, `TreeEntity`

|列名|java类型|默认值|说明|
|----|----|----|----|
|id|Long||主键|
|code|String|非空|机构编码|
|name|String|非空|机构名称|
|englishName|String||机构英文名称|
|type|String|非空|机构类型|
|address|String||地址|
|contactTel|String||联系电话|
|remark|String||备注|
|parent|Organization||上级机构|


## 1.5. 部门表

- 类名：`Department`
- 表名：`T_SYS_DEPARTMENT`
- 基本属性： `BaseEntity`

|列名|java类型|默认值|说明|
|----|----|----|----|
|id|Long||主键|
|code|String|非空|部门编码|
|name|String|非空|部门名称|
|englishName|String||英文名称|
|contactTel|String||联系电话|
|remark|String||备注|


## 1.6. 用户表

- 类名：`User`
- 表名：`T_SYS_USER`
- 基本属性： `BaseEntity`

|列名|java类型|默认值|说明|
|----|----|----|----|
|id|Long||主键|
|name|String|非空|unique， 用户名|
|password|String|非空|密码|
|status|Integer|非空|用户状态 0-lock， 1-unlock|
|isAdmin|String|非空|是否为系统管理员|
|isFirstPwd|Integer|1|是否是第一次密码 0-false, 1-true|
|errNumber|Integer|0|密码输入错误次数|
|realName|String|非空|用户昵称|
|contactTel|String||联系电话|
|email|String||邮箱|
|remark|String||备注|
|organ|Organization|非空|所属机构|

## 1.7. 角色表

- 类名：`Role`
- 表名：`T_SYS_ROLE`
- 基本属性： `BaseEntity`

|列名|java类型|默认值|说明|
|----|----|----|----|
|id|Long||主键|
|name|String|非空|角色名|
|remark|String||备注|

## 1.8. 子系统

- 类名：`SubSystem`
- 表名：`T_SYS_SUBSYSTEM`
- 基本属性： `BaseEntity`

|列名|java类型|默认值|说明|
|----|----|----|----|
|id|Long||主键|
|name|String|非空|系统名|
|path|String|非空|系统path|
|orderNum|String||排序|
|remark|String||备注|


## 1.9. 菜单模块表

- 类名：`Module`
- 表名：`T_SYS_MODULE`
- 基本属性： `BaseEntity`， `TreeEntity`

|列名|java类型|默认值|说明|
|----|----|----|----|
|id|Long||主键|
|code|String|非空|模块编码|
|name|String|非空|模块名|
|url|String|非空|模块路径|
|orderNum|Integer||显示顺序|
|remark|String||备注|
|parent|Module||上级模块|
|subSystem|SubSystem||所属子系统|


## 1.10. 模块功能表

- 类名：`ModuleFun`
- 表名：`T_SYS_MODULEFUN`
- 基本属性： `BaseEntity`

|列名|java类型|默认值|说明|
|----|----|----|----|
|id|Long||主键|
|code|String|非空|功能编码|
|name|String|非空|功能名|
|url|String|非空|功能路径|
|orderNum|Integer||显示顺序|
|remark|String||备注|
|module|Module|非空|所属模块|

## 1.11. 用户部门关联表

- 类名：无
- 表名：`T_SYS_USER_DEP_REL`

|列名|java类型|默认值|说明|
|----|----|----|----|
|useId|Long|非空|用户id|
|deptId|Long|非空|部门id|

## 1.12. 用户角色关联表

- 类名：无
- 表名：`T_SYS_USER_ROLE_REL`

|列名|java类型|默认值|说明|
|----|----|----|----|
|useId|Long|非空|用户id|
|roleId|Long|非空|角色id|

## 1.13. 角色功能关联表

- 类名：无
- 表名：`T_SYS_ROLE_FUN_REL`

|列名|java类型|默认值|说明|
|----|----|----|----|
|roleId|Long|非空|角色id|
|funId|Long|非空|功能id|


