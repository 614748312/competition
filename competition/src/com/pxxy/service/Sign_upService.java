package com.pxxy.service;

import com.pxxy.entity.PageBean;
import com.pxxy.entity.Sign_up;

public interface Sign_upService {

	PageBean<Sign_up> findAllSign_up(int currentPage, int pageSize);

	Sign_up findSign_upById(int student_id);

	void updateSign_up(Sign_up sign_up);

	void delSign_up(Sign_up sign_up);

	void addSign_up(Sign_up sign_up);

}
