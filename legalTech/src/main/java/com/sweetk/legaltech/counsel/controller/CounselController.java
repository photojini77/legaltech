package com.sweetk.legaltech.counsel.controller;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sweetk.legaltech.counsel.mapper.CounselMapper;
import com.sweetk.legaltech.main.vo.MainVo;

@Controller
public class CounselController {
	
	Logger log = Logger.getLogger(CounselController.class);
	
	@Autowired
	private SqlSession sqlSession;
    
    @Autowired 
    private PlatformTransactionManager transactionManager;
	
	@RequestMapping("/counsel_resist.do")
	protected ModelAndView counsel_resist(HttpServletRequest req, HttpSession session, HttpServletResponse resp) {
		
		ModelAndView mav = new ModelAndView("counsel/counsel_resist");
		
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		
		 try {
			 
			 MainVo info = new MainVo();
			 
			 info = mapper.counsel_company_info(com_id);
			 
			 mav.addObject("info", info);
			}
			catch(Exception e) {
		        e.printStackTrace();
		    }
		return mav;
	}

	@RequestMapping("/company_info_save.do")
	protected void company_info_save(HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception  {
		
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		
		resp.setContentType("text/xml; charset=utf-8");
        PrintWriter out = null;
        out = new PrintWriter(resp.getWriter()); 
    	
        String strSaveDir = "/files/counsel/";
        
        String savePath = req.getRealPath(strSaveDir); 
        
        File targetDir = null;
		targetDir = new File(savePath);
		if(!targetDir.isDirectory()){
			targetDir.mkdirs();
		}
		
		int sizeLimit = 100 * 1024 * 1024 / 2; 
		String encType = "UTF-8"; 
				
		MultipartRequest multi = new MultipartRequest(req, savePath, sizeLimit, encType, new DefaultFileRenamePolicy());
		
		Map<String,Object> mapParam = new HashMap<String,Object>();
		
		mapParam.put("com_id",com_id);
		
		String company_name = (String)multi.getParameter("company_name");
		String owner_name = (String)multi.getParameter("owner_name");
		String owner_id1 = (String)multi.getParameter("owner_id1");
		String owner_id2 = (String)multi.getParameter("owner_id2");
		String company_id1 = (String)multi.getParameter("company_id1");
		String company_id2 = (String)multi.getParameter("company_id2");
		String company_id3 = (String)multi.getParameter("company_id3");
		
		mapParam.put("company_name",company_name);
		mapParam.put("owner_name",owner_name);
		mapParam.put("owner_id1",owner_id1);
		mapParam.put("owner_id2",owner_id2);
		mapParam.put("company_id1",company_id1);
		mapParam.put("company_id2",company_id2);
		mapParam.put("company_id3",company_id3);
		
		String birth = (String)multi.getParameter("birth");
		String company_addr = (String)multi.getParameter("company_addr");
		String factory_addr = (String)multi.getParameter("factory_addr");
		String homepage = (String)multi.getParameter("homepage");
		
		mapParam.put("birth",birth);
		mapParam.put("company_addr",company_addr);
		mapParam.put("factory_addr",factory_addr);
		mapParam.put("homepage",homepage);
		
		String email1 = (String)multi.getParameter("email1");
		String email2 = (String)multi.getParameter("email2");
		String email3 = (String)multi.getParameter("email3");
		String main_job = (String)multi.getParameter("main_job");
		String main_product = (String)multi.getParameter("main_product");
		String industry_cd = (String)multi.getParameter("industry_cd");
		String sell_amt = (String)multi.getParameter("sell_amt");
		String employee_cnt = (String)multi.getParameter("employee_cnt");
		
		mapParam.put("email1",email1);
		mapParam.put("email2",email2);
		mapParam.put("email3",email3);
		mapParam.put("main_job",main_job);
		mapParam.put("main_product",main_product);
		mapParam.put("industry_cd",industry_cd);
		mapParam.put("sell_amt",sell_amt);
		mapParam.put("employee_cnt",employee_cnt);
		
		String counsel_yn = (String)multi.getParameter("counsel_yn");
		String manager_team = (String)multi.getParameter("manager_team");
		String manager_level = (String)multi.getParameter("manager_level");
		String manager_name = (String)multi.getParameter("manager_name");
		String manager_ph1 = (String)multi.getParameter("manager_ph1");
		String manager_ph2 = (String)multi.getParameter("manager_ph2");
		String manager_ph3 = (String)multi.getParameter("manager_ph3");
		String manager_em1 = (String)multi.getParameter("manager_em1");
		String manager_em2 = (String)multi.getParameter("manager_em2");
		String manager_em3 = (String)multi.getParameter("manager_em3");
		String bigo = (String)multi.getParameter("bigo");
		String apply_company = (String)multi.getParameter("apply_company");
		String apply_ceo = (String)multi.getParameter("apply_ceo");

		mapParam.put("counsel_yn",counsel_yn);
		mapParam.put("manager_team",manager_team);
		mapParam.put("manager_level",manager_level);
		mapParam.put("counsel_yn",manager_name);
		mapParam.put("manager_ph1",manager_ph1);
		mapParam.put("manager_ph2",manager_ph2);
		mapParam.put("manager_ph3",manager_ph3);
		mapParam.put("manager_em1",manager_em1);
		mapParam.put("manager_em2",manager_em2);
		mapParam.put("manager_em3",manager_em3);
		mapParam.put("bigo",bigo);
		mapParam.put("apply_company",apply_company);
		mapParam.put("apply_ceo",apply_ceo);
		
		String fileNm = "";
		String newFile2 = "";
			
		fileNm = multi.getFilesystemName("sign");
		
		if(!"".equals(fileNm) && fileNm != null) {
			
			newFile2 = new SimpleDateFormat("yyyyMMddHmsS").format(new Date());
			int index = fileNm.indexOf(".");
			String filenm2 = fileNm.substring(index, fileNm.length());// .확장자만 남기고 다 삭제
			newFile2 = newFile2 + filenm2;

			File file=new File(savePath+"/"+fileNm); //원본파일부르기
			file.renameTo(new File(savePath+"/"+newFile2)); //파일이름변경
			
			System.out.println("newFile2" + newFile2);
			mapParam.put("sign_file_nm",newFile2);
			System.out.println("fileNm" + fileNm);
			mapParam.put("sign_org_file_nm",fileNm);
		}
		
		int a = mapper.company_info_save(mapParam);
        
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/company_file_save.ajax", method = {RequestMethod.POST, RequestMethod.GET})
    protected void company_file_save(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws Exception {
    	
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
    	
    	String strSaveDir = "/files/company/";
    	
    	String savePath = req.getRealPath(strSaveDir); 
    	
    	System.out.println("savePath : " + savePath);
    	
    	File targetDir = null;
 		targetDir = new File(savePath);
 		if(!targetDir.isDirectory()){
 			targetDir.mkdirs();
 		}
    	
    	int sizeLimit = 100 * 1024 * 1024 / 2; 
		String encType = "utf-8"; 
		MultipartRequest multi = new MultipartRequest(req, savePath, sizeLimit, encType, new DefaultFileRenamePolicy());
    	
    	
    	String fileName = "";
    	String newFile = "";

    	try {
    		
    		String id = (String)multi.getParameter("id");
    		
			Enumeration formNames = multi.getFileNames();
			
			while(formNames.hasMoreElements()) {
				String formName = (String) formNames.nextElement(); 
				fileName = multi.getFilesystemName(formName);
				
				if(!"".equals(fileName) && fileName != null) {
				
					newFile = new SimpleDateFormat("yyyyMMddHmsS").format(new Date());
					int index = fileName.indexOf(".");
					String filename1 = fileName.substring(index, fileName.length());// .확장자만 남기고 다 삭제
					newFile = newFile + filename1;
		
					File file=new File(savePath+"/"+fileName); //원본파일부르기
					file.renameTo(new File(savePath+"/"+newFile)); //파일이름변경
					
					System.out.println("newFile : " + newFile);
					System.out.println("fileName : " + fileName);
				}
			}
			
    	} catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	resp.setContentType("text/xml; charset=utf-8");
		PrintWriter out = null;
		out = new PrintWriter(resp.getWriter()); 
		
		out.print(newFile);
		out.flush();
		out.close();
    }
	
	
	@RequestMapping("/counsel_contract.do")
	protected ModelAndView counsel_contract(HttpServletRequest req, HttpSession session, HttpServletResponse resp) {
		
		ModelAndView mav = new ModelAndView("counsel/counsel_contract");
		
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		
		try {
			
			MainVo info = new MainVo();
			
			info = mapper.counsel_company_info(com_id);
			
			mav.addObject("info", info);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping("/company_paper.do")
	protected ModelAndView company_paper(HttpServletRequest req, HttpSession session, HttpServletResponse resp) {
		
		ModelAndView mav = new ModelAndView("counsel/counsel_contract_lawfirm");
		
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		
		try {
			
			MainVo info = new MainVo();
			
			info = mapper.counsel_company_info(com_id);
			
			mav.addObject("info", info);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping("/contract_done.do")
	protected ModelAndView contract_done(HttpServletRequest req, HttpSession session, HttpServletResponse resp) {
		
		ModelAndView mav = new ModelAndView("counsel/contract_done");
		
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		
		System.out.println("contract_done");
		
		try {
			
			MainVo info = new MainVo();
			
			info = mapper.counsel_company_info(com_id);
			
			mav.addObject("info", info);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping("/contract_document.do")
	protected ModelAndView contract_document(HttpServletRequest req, HttpSession session, HttpServletResponse resp) {
		
		ModelAndView mav = new ModelAndView("counsel/contract_done_document");
		
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		System.out.println("contract_document");

		try {
			
			MainVo info = new MainVo();
			
			info = mapper.counsel_company_info(com_id);
			
			mav.addObject("info", info);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping("/satisfied_research.do")
	protected ModelAndView satisfied_research(HttpServletRequest req, HttpSession session, HttpServletResponse resp) {
		
		ModelAndView mav = new ModelAndView("counsel/satisfied_research");
		
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		
		System.out.println("satisfied_research");
		
		try {
			
			MainVo info = new MainVo();
			
			info = mapper.counsel_company_info(com_id);
			
			mav.addObject("info", info);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	
	@RequestMapping(value = "/qna_list.ajax", method = {RequestMethod.POST, RequestMethod.GET})
	protected ModelAndView qna_list(HttpServletRequest req, HttpSession session, HttpServletResponse resp)
		throws Exception {
		
		ModelAndView mav = new ModelAndView("counsel/qna_list");
		
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		
		System.out.println("qna_list");
		
		try {
			List<HashMap<String,Object>> mlist = new ArrayList<HashMap<String,Object>>();
			mlist = mapper.qna_list("1");
			
			for(int i=0; i < mlist.size(); i++) {
				mlist.get(i).put("ask_cntn", mlist.get(i).get("ask_cntn").toString().replaceAll("\n", "<br>"));
			}

			mav.addObject("list", mlist);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@RequestMapping(value = "/qna_save.ajax", method = {RequestMethod.POST, RequestMethod.GET})
	protected ModelAndView qna_save(HttpServletRequest req, HttpSession session, HttpServletResponse resp)
			throws Exception {
		ModelAndView mav = new ModelAndView("counsel/qna_list");
		CounselMapper mapper = sqlSession.getMapper(CounselMapper.class);
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		
		String strSaveDir = "/files/sweetk/qna/";
    	String savePath = req.getRealPath(strSaveDir); 
    	
    	System.out.println("savePath : " + savePath);
    	
    	File targetDir = null;
 		targetDir = new File(savePath);
 		if(!targetDir.isDirectory()){
 			targetDir.mkdirs();
 		}
    	
    	int sizeLimit = 100 * 1024 * 1024 / 2; 
		String encType = "utf-8"; 
		MultipartRequest multi = new MultipartRequest(req, savePath, sizeLimit, encType, new DefaultFileRenamePolicy());
    	
    	String fileName = "";
    	String newFile = "";
    	String appl_seq = "1";
    	
    	HashMap<String,Object> info = new HashMap<String,Object>();

    	try {
    		
    		String cntn = (String)multi.getParameter("cntn");
    		
    		info.put("ask_cntn", cntn);
    		info.put("appl_seq", appl_seq);
    		info.put("company_id", com_id);
    		
			Enumeration formNames = multi.getFileNames();
			
			while(formNames.hasMoreElements()) {
				String formName = (String) formNames.nextElement(); 
				fileName = multi.getFilesystemName(formName);
				
				if(!"".equals(fileName) && fileName != null) {
				
					newFile = new SimpleDateFormat("yyyyMMddHmsS").format(new Date());
					int index = fileName.indexOf(".");
					String filename1 = fileName.substring(index, fileName.length());// .확장자만 남기고 다 삭제
					newFile = newFile + filename1;
		
					File file=new File(savePath+"/"+fileName); //원본파일부르기
					file.renameTo(new File(savePath+"/"+newFile)); //파일이름변경
					
					System.out.println("newFile : " + newFile);
					System.out.println("fileName : " + fileName);
					
					info.put("file_nm", newFile);
					info.put("org_file_nm", fileName);
				}
			}
    			
			int a = mapper.qna_save(info);
		
			List<HashMap<String,Object>> mlist = new ArrayList<HashMap<String,Object>>();
			mlist = mapper.qna_list(appl_seq);
			
			for(int i=0; i < mlist.size(); i++) {
				mlist.get(i).put("ask_cntn", mlist.get(i).get("ask_cntn").toString().replaceAll("\n", "<br>"));
			}
			
			mav.addObject("list", mlist);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("/counsel_done.do")
	protected ModelAndView counsel_done(HttpServletRequest req, HttpSession session, HttpServletResponse resp) {
		
		ModelAndView mav = new ModelAndView("counsel/counsel_done");
		
		session.setAttribute("UserId", "sweetk");
		
		String com_id = session.getAttribute("UserId").toString();
		
		System.out.println("counsel_done");
		
		try {
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}	
	
}
