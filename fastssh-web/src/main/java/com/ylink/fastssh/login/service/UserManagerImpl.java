/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  16/1/10.
 */
package com.ylink.fastssh.login.service;

import com.ylink.fastssh.login.dao.UserRepository;
import com.ylink.fastssh.project.basic.db.service.BaseManagerImpl;
import com.ylink.fastssh.project.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * author YangHan
 * data 16/1/10
 */
@Service("userManager")
public class UserManagerImpl extends BaseManagerImpl<User,String> implements UserManager{

    @Override
    @Resource(name="userRepository")
    public void setJpaRepository(JpaRepository jpaRepository) {
        super.setJpaRepository(jpaRepository);
    }

    @Override
    public UserRepository getJpaRepository() {
        return (UserRepository) super.getJpaRepository();
    }
}
