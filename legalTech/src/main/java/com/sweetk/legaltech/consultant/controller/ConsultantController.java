package com.sweetk.legaltech.consultant.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ConsultantController {
	
	
	@Autowired
    private SqlSession sqlSession;
    
    @Autowired 
    private PlatformTransactionManager transactionManager;
	
	@RequestMapping("/consultant_resist.do")
	protected ModelAndView login_do() {
		ModelAndView mav = new ModelAndView("consultant/consultant_resist");
		return mav;
	}
}
