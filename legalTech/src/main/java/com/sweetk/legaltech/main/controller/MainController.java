package com.sweetk.legaltech.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	Logger log = Logger.getLogger(MainController.class);
	
	@Autowired
    private SqlSession sqlSession;
    
    @Autowired 
    private PlatformTransactionManager transactionManager;
	
    @RequestMapping("/")
	protected ModelAndView login() {
		ModelAndView mav = new ModelAndView("main");
		return mav;
	}

    @RequestMapping("/main.do")
    protected ModelAndView main() {
    	ModelAndView mav = new ModelAndView("main");
    	return mav;
    }
	
	@RequestMapping("/login.do")
	protected ModelAndView login_do() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	/**
	 * 우편번호 팝업
	 * @param req
	 * @param session
	 * @param resp
	 * @return
	 */
	@RequestMapping("/zip_test_popup2.do")
	protected ModelAndView zip_test_popup2(HttpServletRequest req, HttpSession session, HttpServletResponse resp) {
    	ModelAndView mav = new ModelAndView("zip/jusoPopup");
    	
	    try {
		}
		catch(Exception e) {
	        e.printStackTrace();
	    }
	
	    return mav;
	}
	
}
