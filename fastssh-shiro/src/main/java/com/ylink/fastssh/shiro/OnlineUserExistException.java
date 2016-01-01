/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  15/12/30.
 */
package com.ylink.fastssh.shiro;

import org.apache.shiro.authc.AuthenticationException;

/**
 * author YangHan
 * data 15/12/30
 */
public class OnlineUserExistException extends AuthenticationException {

    private static final long serialVersionUID = -3071547857552085391L;

    private OnlineUser user;

    public OnlineUserExistException() {
        super();
    }

    public OnlineUserExistException(OnlineUser user) {
        this.user = user;
    }

    public OnlineUser getUser() {
        return user;
    }
}
