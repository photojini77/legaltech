package com.sweetk.legaltech.legal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LegalController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private PlatformTransactionManager transactionManager;

	
	@RequestMapping("/legal_lawer.do")
	protected ModelAndView legal_lawer(HttpServletRequest request, HttpSession session, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("legal/legal_lawer");
		return mav;
	}
	
	
}
