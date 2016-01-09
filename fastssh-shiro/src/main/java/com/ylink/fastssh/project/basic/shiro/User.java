/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  15/12/30.
 */
package com.ylink.fastssh.project.basic.shiro;

import java.io.Serializable;
import java.util.Calendar;

/**
 * author YangHan
 * data 15/12/30
 */
public interface User extends Serializable {

    /**
     * 用户ID
     */
    public String getUserId();

    /**
     * 用户名
     */
    public String getUserName();

    /**
     * 最后锁定时间
     */
    public Calendar getLastLoginLockTime( );

    /**
     * 是否有效
     */
    public boolean isEnabled( );

    /**
     * 是否过期
     */
    public boolean isExpired( );
}
