package hlsy.dao.impl;

import java.io.Serializable;
import java.util.List;

import hlsy.common.dao.impl.BaseDaoHibernate4;
import hlsy.dao.TeacherDao;
import hlsy.domain.Teacher;

public class TeacherDaoHibernate extends BaseDaoHibernate4<Teacher> implements TeacherDao {

	@Override
	public Teacher get(Class<Teacher> entityClazz, Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable save(Teacher entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Teacher entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Teacher entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Class<Teacher> entityClazz, Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Teacher> findAll(Class<Teacher> entityClazz) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long findCount(Class<Teacher> entityClazz) {
		// TODO Auto-generated method stub
		return 0;
	}

}
