/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  16/1/9.
 */
package com.ylink.fastssh.login.dao;

import com.ylink.fastssh.project.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * author YangHan
 * data 16/1/9
 */
public interface UserRepository extends JpaRepository<User,String> {
}
