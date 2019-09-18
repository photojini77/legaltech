package com.sweetk.legaltech.consultant.controller;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
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
	protected ModelAndView consultant_resist() {
		ModelAndView mav = new ModelAndView("consultant/consultant_resist");
		return mav;
	}

	@RequestMapping("/consultant_resist2.do")
	protected ModelAndView consultant_resist2() {
		ModelAndView mav = new ModelAndView("consultant/consultant_resist2");
		return mav;
	}
	
	@RequestMapping("/practice_submit.do")
    public void practice_submit (HttpServletRequest request, HttpSession session, HttpServletResponse response) throws Exception {
    	//ModelAndView mav = new ModelAndView("practice/practice_result");
    	
    	//PracticeMapper mapper = sqlSession.getMapper(PracticeMapper.class);
    	
    	response.setContentType("text/xml; charset=utf-8");
        PrintWriter out = null;
        out = new PrintWriter(response.getWriter()); 
    	
    	DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(1024 * 100);
		
		String strSaveDir = request.getServletContext().getRealPath("/");
		
		System.out.println("strSaveDir : " + strSaveDir);
		
		factory.setRepository(new File(strSaveDir));
		
		ServletFileUpload servletFileUpload = new ServletFileUpload(factory);
		servletFileUpload.setHeaderEncoding("utf-8");
		servletFileUpload.setSizeMax(1024 * 1024 * 200);
		
		String savePath = request.getRealPath(strSaveDir); 

		System.out.println("savePath : " + savePath);
		
		java.util.List fileList = null;

		try {
			fileList = servletFileUpload.parseRequest(request);
		} catch (Exception ex) {
			System.out.println("ex : " + ex.getMessage());
		}
		
		ArrayList<File> attachFileList = new ArrayList<File>();
		
		File targetDir = null;
		
		String newFile = "";
		
		for (int i = 0; i < fileList.size(); i++) {
			FileItem fileItem = (FileItem) fileList.get(i);
			if (!fileItem.isFormField()) {
				
				int idx = fileItem.getName().lastIndexOf("\\");
				if (idx == -1) {
					idx = fileItem.getName().lastIndexOf("/");
				}					
				String fileNameAttach = fileItem.getName().substring(idx + 1);
				
				
				
				if ("file".equals(fileItem.getFieldName()) && fileItem.getSize() > 0) {
					
					String strSaveDir2 = "";
					strSaveDir2 = strSaveDir + "files/practice/";
					targetDir = new File(strSaveDir2);
					if(!targetDir.isDirectory()){
						targetDir.mkdirs();
					}
					
					newFile = new SimpleDateFormat("yyyyMMddHmsS").format(new Date());
					int index = fileNameAttach.lastIndexOf(".");
					
					String filename1 = fileNameAttach.substring(index, fileNameAttach.length());// .확장자만 남기고 다 삭제
					newFile = newFile + filename1;
					
					File uploadedFile = new File(strSaveDir2, newFile);
					
					attachFileList.add(uploadedFile);
					
					if ( uploadedFile.exists()){
						for(int k=0; true; k++){
							String[] filePart = getFileNamePart(fileNameAttach);
							uploadedFile = new File(strSaveDir2, filePart[0] + "_" + k + "." + filePart[1]);
							if(!uploadedFile.exists()){ 
								fileNameAttach = filePart[0] + "_" + k + "." + filePart[1];
								break;
							}
						}
					}
					attachFileList.add(uploadedFile);
					fileItem.write(uploadedFile);							  
					uploadedFile = null;
					
				} 
			}
		}
		
		 
		out.print(newFile);
		out.flush();
		out.close();
    }
	
	private String[] getFileNamePart(String fileName) {
		String[] filePart = new String[2];
        int index = fileName.lastIndexOf(".");
        if (index != -1) {
            filePart[0] = fileName.substring(0, index);
            filePart[1]  = fileName.substring(index + 1);
        } else {
        	filePart[0] = fileName;
        	filePart[1] = "";
        }
        
		return filePart;
	}
}
