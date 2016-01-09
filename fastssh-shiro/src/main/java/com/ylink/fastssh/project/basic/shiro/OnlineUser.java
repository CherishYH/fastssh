/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  15/12/30.
 */
package com.ylink.fastssh.project.basic.shiro;

import java.io.Serializable;
import java.util.Date;

/**
 * author YangHan
 * data 15/12/30
 */
public class OnlineUser implements Serializable{

    private static final long serialVersionUID = 1517995311969262617L;

    /**
     * 用户名称
     */
    private String username;

    /**
     * Session id
     */
    private String sessionid;

    /**
     * 登录IP
     */
    private String ip;

    /**
     * 登录时间
     */
    private Date loginTime;

    public OnlineUser(String username,String sessionid,String ip) {
        super();
        this.username = username;
        this.sessionid = sessionid;
        this.ip = ip;
        this.loginTime = new Date();
    }

    public OnlineUser() {
        super();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSessionid() {
        return sessionid;
    }

    public void setSessionid(String sessionid) {
        this.sessionid = sessionid;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

}
