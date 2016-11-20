package hlsy.dao.impl;

import java.io.Serializable;
import java.util.List;

import hlsy.common.dao.impl.BaseDaoHibernate4;
import hlsy.dao.ClubDao;
import hlsy.domain.Club;

public class ClubDaoHibernate extends BaseDaoHibernate4<Club> implements ClubDao {

	@Override
	public Club get(Class<Club> entityClazz, Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable save(Club entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Club entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Club entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Class<Club> entityClazz, Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Club> findAll(Class<Club> entityClazz) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long findCount(Class<Club> entityClazz) {
		// TODO Auto-generated method stub
		return 0;
	}

}
