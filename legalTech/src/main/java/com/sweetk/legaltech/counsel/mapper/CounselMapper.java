package com.sweetk.legaltech.counsel.mapper;

import java.util.Map;

import com.sweetk.legaltech.main.vo.MainVo;

public interface CounselMapper {
	
	public MainVo counsel_company_info(String company_id);
	
	int company_info_save(Map<String,Object> param);
}
