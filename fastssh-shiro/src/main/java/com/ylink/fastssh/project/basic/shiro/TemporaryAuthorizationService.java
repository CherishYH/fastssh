package com.ylink.fastssh.project.basic.shiro;

import javax.servlet.ServletRequest;

/**
 * author YangHan
 * data 15/12/30
 */
public interface TemporaryAuthorizationService {
    /**
     * 是否临时授权
     */
    public boolean authorize(String[] perms,ServletRequest request);
}
