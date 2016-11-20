package hlsy.dao.impl;

import java.io.Serializable;
import java.util.List;

import hlsy.common.dao.impl.BaseDaoHibernate4;
import hlsy.dao.SuggestionDao;
import hlsy.domain.Suggestion;

public class SuggestionDaoHibernate extends BaseDaoHibernate4<Suggestion> implements SuggestionDao {

	@Override
	public Suggestion get(Class<Suggestion> entityClazz, Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable save(Suggestion entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Suggestion entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Suggestion entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Class<Suggestion> entityClazz, Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Suggestion> findAll(Class<Suggestion> entityClazz) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long findCount(Class<Suggestion> entityClazz) {
		// TODO Auto-generated method stub
		return 0;
	}

}
