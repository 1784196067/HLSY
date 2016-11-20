package hlsy.service.impl;


import hlsy.dao.TeacherDao;
import hlsy.service.TeacherService;

public class TeacherServiceImpl implements TeacherService {
	private TeacherDao teacherDao;


	public void setTeacherDao(TeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}

}
