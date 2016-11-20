package hlsy.dao.impl;

import java.io.Serializable;
import java.util.List;

import hlsy.common.dao.impl.BaseDaoHibernate4;
import hlsy.dao.CategoryDao;
import hlsy.domain.Category;

public class CategoryDaoHibernate extends BaseDaoHibernate4<Category> implements CategoryDao {

	@Override
	public Category get(Class<Category> entityClazz, Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable save(Category entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Category entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Category entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Class<Category> entityClazz, Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Category> findAll(Class<Category> entityClazz) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long findCount(Class<Category> entityClazz) {
		// TODO Auto-generated method stub
		return 0;
	}

}
