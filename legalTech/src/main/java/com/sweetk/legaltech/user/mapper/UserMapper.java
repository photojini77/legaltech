package com.sweetk.legaltech.user.mapper;

import java.util.Map;

import com.sweetk.legaltech.user.vo.UserVo;

public interface UserMapper {

	public int id_check(String id);

	public void user_insert(UserVo uvo);
	
	public Map<String,Object> company_login_check(String id, String pw);
	public Map<String,Object> legal_login_check(String id, String pw);

}
