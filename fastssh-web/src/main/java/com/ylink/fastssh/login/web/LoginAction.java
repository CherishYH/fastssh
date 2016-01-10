/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  16/1/9.
 */
package com.ylink.fastssh.login.web;

import com.ylink.fastssh.project.basic.web.action.BaseAction;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * author YangHan
 * data 16/1/9
 */
@Component
@Scope("prototype")
@Namespace("/")
public class LoginAction extends BaseAction{

    @Action(value = "login",results = {
            @Result(name = "success", location = "/pages/security/LoginAction_login.jsp")
    })
    public String login(){
        return SUCCESS;
    }


    @Action(value = "test",results = {
            @Result(name = "success", location = "/pages/test/LoginAction_test.jsp")
    })
    public String test(){
        return SUCCESS;
    }
}
