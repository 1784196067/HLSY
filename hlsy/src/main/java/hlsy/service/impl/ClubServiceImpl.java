package hlsy.service.impl;

import hlsy.dao.ClubDao;
import hlsy.service.ClubService;

public class ClubServiceImpl implements ClubService {
	private ClubDao clubDao;


	public void setClubDao(ClubDao clubDao) {
		this.clubDao = clubDao;
	}

}
