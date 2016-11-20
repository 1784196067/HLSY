package hlsy.dao.impl;

import java.io.Serializable;
import java.util.List;

import hlsy.common.dao.impl.BaseDaoHibernate4;
import hlsy.dao.ActivityDao;
import hlsy.domain.Activity;

public class ActivityDaoHibernate extends BaseDaoHibernate4<Activity> implements ActivityDao {

	@Override
	public Activity get(Class<Activity> entityClazz, Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable save(Activity entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Activity entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Activity entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Class<Activity> entityClazz, Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Activity> findAll(Class<Activity> entityClazz) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long findCount(Class<Activity> entityClazz) {
		// TODO Auto-generated method stub
		return 0;
	}

}
