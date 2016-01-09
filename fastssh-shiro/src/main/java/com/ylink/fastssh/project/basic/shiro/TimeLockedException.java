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
public class TimeLockedException extends AuthenticationException {

    private static final long serialVersionUID = 5038485428928343149L;

    public TimeLockedException() {
        super();
    }

    public TimeLockedException(String message, Throwable cause) {
        super(message, cause);
    }

    public TimeLockedException(String message) {
        super(message);
    }

    public TimeLockedException(Throwable cause) {
        super(cause);
    }
}
