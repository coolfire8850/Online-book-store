package com.tarena.dao;

import java.util.List;

import com.tarena.entity.Category;



public interface CategoryDAO {
	public List<Category> findAll() throws Exception;
	public List<Category> findByParentId(int pid) throws Exception;
}
