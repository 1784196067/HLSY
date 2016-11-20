package hlsy.service.impl;

import hlsy.dao.ApplyDao;
import hlsy.service.ApplyService;

public class ApplyServiceImpl implements ApplyService {
	private ApplyDao applyDao;

	public void setApplyDao(ApplyDao applyDao) {
		this.applyDao = applyDao;
	}
	

}
