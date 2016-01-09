/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  16/1/9.
 */
package com.ylink.fastssh.project.basic.model.entity;

import com.ylink.fastssh.common.utils.StringUtils;
import com.ylink.fastssh.project.basic.model.Persistence;

import javax.persistence.*;
import java.util.Calendar;
import java.util.UUID;

/**
 * author YangHan
 * data 16/1/9
 */
@MappedSuperclass
public abstract class UUIDModel implements Persistence<String>{

    /**
     * uuid
     */
    @Id
    @Column(name="ID")
    private String identity;

    /**
     * 创建日期
     */
    @Column(name="CREATED_TIME",columnDefinition="DATE")
    @Temporal( TemporalType.TIMESTAMP )
    protected Calendar createdTime;

    public UUIDModel(){
    }

    public String getIdentity( ){
        return this.identity;
    }

    public void preInsert( ){
        this.identity = UUID.randomUUID().toString();
        this.createdTime = Calendar.getInstance();
    }

    public void postInsertFailure( ){
        this.createdTime = null;
        this.identity = null;
    }

    public boolean isInsert( ){
        return StringUtils.clean(this.getIdentity()) == null;
    }

    public String getUuid() {
        return identity;
    }

    public void setUuid(String uuid) {
        this.identity = uuid;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public Calendar getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Calendar createdTime) {
        this.createdTime = createdTime;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((identity == null) ? 0 : identity.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        UUIDModel other = (UUIDModel) obj;
        if (identity == null) {
            if (other.identity != null)
                return false;
        } else if (!identity.equals(other.identity))
            return false;
        return true;
    }
}
