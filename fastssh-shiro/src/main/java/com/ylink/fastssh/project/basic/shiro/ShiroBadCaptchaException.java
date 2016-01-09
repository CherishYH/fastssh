/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  15/12/30.
 */
package com.ylink.fastssh.project.basic.shiro;

import org.apache.shiro.authc.AuthenticationException;

/**
 * author YangHan
 * data 15/12/30
 */
public class ShiroBadCaptchaException extends AuthenticationException {

    private static final long serialVersionUID = -4987144327107616457L;

    public ShiroBadCaptchaException() {
        super();
    }

    public ShiroBadCaptchaException(String message, Throwable cause) {
        super(message, cause);
    }

    public ShiroBadCaptchaException(String message) {
        super(message);
    }

    public ShiroBadCaptchaException(Throwable cause) {
        super(cause);
    }

}

