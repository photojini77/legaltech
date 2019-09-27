package com.sweetk.legaltech.counsel.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.sweetk.legaltech.main.vo.MainVo;

public interface CounselMapper {
	
	public MainVo counsel_company_info(String company_id);
	
	public int company_info_save(Map<String,Object> param);
	
	public ArrayList<HashMap<String,Object>> qna_list(String counsel_seq); 
	
	public int qna_save(Map<String,Object> param);
}
