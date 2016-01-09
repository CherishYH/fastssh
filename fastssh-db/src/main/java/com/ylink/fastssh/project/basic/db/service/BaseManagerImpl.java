/**
 * 版权所有(C) 2015 深圳雁联计算系统有限公司
 * 创建：YangHan  16/1/10.
 */
package com.ylink.fastssh.project.basic.db.service;

import com.ylink.fastssh.project.basic.model.Persistence;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Persistable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.io.Serializable;
import java.util.List;

/**
 * author YangHan
 * data 16/1/10
 */
public class BaseManagerImpl<T extends Persistence<?>,ID extends Serializable> implements BaseManager<T,ID>{

    private JpaRepository jpaRepository;

    public JpaRepository getJpaRepository() {
        return jpaRepository;
    }

    public void setJpaRepository(JpaRepository jpaRepository) {
        this.jpaRepository = jpaRepository;
    }

    @Override
    public List<T> findAll() {
        return jpaRepository.findAll();
    }

    @Override
    public List<T> findAll(Sort sort) {
        return jpaRepository.findAll(sort);
    }

    @Override
    public Page<T> findAll(Pageable pageable) {
        return jpaRepository.findAll(pageable);
    }

    @Override
    public List<T> findAll(Iterable<ID> ids) {
        return findAll(ids);
    }

    @Override
    public long count() {
        return jpaRepository.count();
    }

    @Override
    public void delete(ID id) {
        jpaRepository.delete(id);
    }

    @Override
    public void delete(T entity) {
        jpaRepository.delete(entity);
    }

    @Override
    public void delete(Iterable<? extends T> entities) {
        jpaRepository.delete(entities);
    }

    @Override
    public void deleteAll() {
        jpaRepository.deleteAll();
    }

    @Override
    public <S extends T> S save(S entity) {
        entity.preInsert();
        return (S) jpaRepository.save(entity);
    }

    @Override
    public <S extends T> List<S> save(Iterable<S> entities) {
        for (S entity : entities){
            entity.preInsert();
        }
        return jpaRepository.save(entities);
    }

    @Override
    public T findOne(ID id) {
        return (T) jpaRepository.findOne(id);
    }

    @Override
    public boolean exists(ID id) {
        return jpaRepository.exists(id);
    }

    @Override
    public void flush() {
        jpaRepository.flush();
    }

    @Override
    public <S extends T> S saveAndFlush(S entity) {
        entity.preInsert();
        return (S) jpaRepository.saveAndFlush(entity);
    }

    @Override
    public void deleteInBatch(Iterable<T> entities) {
        jpaRepository.deleteInBatch(entities);
    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public T getOne(ID id) {
        return (T) jpaRepository.getOne(id);
    }
}
