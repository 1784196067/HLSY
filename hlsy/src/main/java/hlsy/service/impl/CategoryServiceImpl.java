package hlsy.service.impl;

import hlsy.dao.CategoryDao;
import hlsy.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {
	private CategoryDao categoryDao;

	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	

}
