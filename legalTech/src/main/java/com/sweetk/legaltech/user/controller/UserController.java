package com.sweetk.legaltech.user.controller;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sweetk.legaltech.user.mapper.UserMapper;
import com.sweetk.legaltech.user.vo.UserVo;

@Controller
public class UserController {
	
	Logger log = Logger.getLogger(UserController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/join.do")
	protected ModelAndView join_do(HttpServletRequest request, HttpSession session, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("join/join");
		return mav;
	}
	
	@RequestMapping("/join2.do")
	protected ModelAndView join2_do(HttpServletRequest request, HttpSession session, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("join/join2");
		
		String passYn = request.getParameter("pass");
		String text = request.getParameter("text");
		
		if(!"Y".equals(passYn)) {
			response.sendRedirect("./join.do");
		}
		
		try {
			mav.addObject("text", text);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	
	@RequestMapping(value = "/id_check.ajax", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	protected void id_check(HttpServletRequest request, HttpSession session, HttpServletResponse response, @RequestParam(value="legal_id", required=false) String id) throws Exception {
		try {
			UserMapper mapper = sqlSession.getMapper(UserMapper.class);
			
			response.setContentType("text/xml; charset=utf-8");
			PrintWriter out = null;
			out = response.getWriter();
			
			int cnt = mapper.id_check(id);
//			System.out.println(cnt);
//			Map a = new HashMap<Object, String>();
//			a.put("test", "tesval");
//			return a;
			out.print(Integer.toString(cnt));
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value = "/user_info_save.ajax", method = {RequestMethod.GET, RequestMethod.POST} )
	@ResponseBody
	protected void user_info_save(HttpServletRequest request, HttpSession session, HttpServletResponse response
			,@RequestParam(value="manager_name", required=false) String name
			,@RequestParam(value="email", required=false) String email
			,@RequestParam(value="legal_id", required=false) String id
			,@RequestParam(value="password", required=false) String password
			,@RequestParam(value="phone", required=false) String phone
			) throws Exception{
		
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		JSONParser jsonParser = new JSONParser();
		JSONArray jsonArray = new JSONArray();
		
		response.setContentType("text/xml; charset=utf-8");
		PrintWriter out = null;
		out = new PrintWriter(response.getWriter());
		String str = "";
		
		UserVo uvo = new UserVo();
		
		uvo.setLegal_id(id);
		uvo.setPassword(password);
		uvo.setManager_name(name);
		uvo.setEmail(email);
		uvo.setPhone(phone);
		
		mapper.user_insert(uvo);
		
		out.flush();
		out.close();
	}
	
	@RequestMapping("/join3.do")
	protected ModelAndView join3_do(HttpServletRequest request, HttpSession session, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("join/join3");
		return mav;
	}
	
	@RequestMapping("/login_check.do")
	protected void login_check(HttpServletRequest req, HttpSession session, HttpServletResponse resp
					,@RequestParam(value="id",required=false) String id
					,@RequestParam(value="password",required=false) String password
					,@RequestParam(value="login_prt",required=false) String login_prt
					) throws Exception {
		
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		resp.setContentType("text/xml; charset=utf-8");
        PrintWriter out = null;
        out = new PrintWriter(resp.getWriter()); 
    	
		Map<String,Object> mapParam = new HashMap<String,Object>();
		
		System.out.println("id : " + id);
		System.out.println("password : " + password);
		System.out.println("login_prt : " + login_prt);
		
		mapParam.put("id",id);
		mapParam.put("password",password);
		mapParam.put("login_prt",login_prt);
		
		Map<String,Object> info = new HashMap<String,Object>();

		System.out.println("info : " + info);
		System.out.println("info.size() : " + info.size());
		
		String result = "";
		
		if(login_prt.equals("1")) {
			info = mapper.company_login_check(id, password); 
		} else if(login_prt.equals("2")) {
			info = mapper.company_login_check(id, password); 
			System.out.println("in : " + info);
		} else if(login_prt.equals("3")) {
			info = mapper.legal_login_check(id, password); 
		}
		
		if (info != null) {
			session.setAttribute("userId", info.get("id"));
        	session.setAttribute("userNm", info.get("name"));
        	result="success";
		} else {
			result = "none";
		}
		
		out.print(result);
		out.flush();
		out.close();
        
	}
	
	@RequestMapping("/login_out.do")
	protected void login_out(HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		resp.setContentType("text/xml; charset=utf-8");
		PrintWriter out = null;
		out = new PrintWriter(resp.getWriter()); 
		
		session.setAttribute("userId", "");
		session.setAttribute("userNm", "");
	
		out.print("");
		out.flush();
		out.close();
		
	}
	

}
