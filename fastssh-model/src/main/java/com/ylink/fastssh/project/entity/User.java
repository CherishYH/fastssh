/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  16/1/9.
 */
package com.ylink.fastssh.project.entity;

import com.ylink.fastssh.project.basic.model.entity.UUIDModel;

import javax.persistence.*;
import java.util.Calendar;

/**
 * author YangHan
 * data 16/1/9
 */
@Entity
@Table(name = "T_USER")
public class User extends UUIDModel{

    @Column(name = "NAME")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
