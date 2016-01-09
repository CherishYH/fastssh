package com.ylink.fastssh.project.basic.db.service;

import com.ylink.fastssh.project.basic.model.Persistence;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Persistable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import javax.persistence.EntityManager;
import java.io.Serializable;
import java.util.List;

/**
 * author YangHan
 * data 16/1/10
 */
public interface BaseManager<T extends Persistence<?>, ID extends Serializable>{

    public List<T> findAll();
    public List<T> findAll(Sort sort);
    public Page<T> findAll(Pageable pageable);
    public List<T> findAll(Iterable<ID> ids);
    public long count();
    public void delete(ID id);
    public void delete(T entity);
    public void delete(Iterable<? extends T> entities);
    public void deleteAll();
    public <S extends T> S save(S entity);
    public <S extends T> List<S> save(Iterable<S> entities);
    public T findOne(ID id);
    public boolean exists(ID id);
    public void flush();
    public <S extends T> S saveAndFlush(S entity);
    public void deleteInBatch(Iterable<T> entities);
    public void deleteAllInBatch();
    public T getOne(ID id);

}
