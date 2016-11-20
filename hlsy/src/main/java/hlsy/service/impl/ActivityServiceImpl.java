package hlsy.service.impl;

import hlsy.dao.ActivityDao;
import hlsy.service.ActivityService;

public class ActivityServiceImpl implements ActivityService {
	private ActivityDao activityDao;

	public void setActivityDao(ActivityDao activityDao) {
		this.activityDao = activityDao;
	}
	

}
