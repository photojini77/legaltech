<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<input type="hidden" id="menu_no" name="menu_no"/>
	<header class="header">
	    <div class="wrap d-flex">
	        <h1 class="header__logo">
	            <a href="./main.do">
	                LEGAL SUPPORT
	            </a>
	        </h1>
	        <nav class="header__nav d-flex">
	        	<c:set value="<%=request.getParameter(\"menu_no\") %>" var="no" />
	            <a href="javascript:;" class="nav__link d-flex <c:if test="${no == '1'}">is-active</c:if>" data-val="1">법무부 자문료 신청</a>
	            <a href="javascript:;" class="nav__link d-flex <c:if test="${no == '2'}">is-active</c:if>" data-val="2">법률 자문단 소개</a>
	            <a href="javascript:;" class="nav__link d-flex <c:if test="${no == '3'}">is-active</c:if>" data-val="3">고객센터</a>
	        </nav>
	        <div class="header__etc d-flex">
	        	<c:set value="<%=session.getAttribute(\"userId\") %>" var="user" />
					<c:choose>
						<c:when test="${fn:length(user) gt 0}">
				            <span id="login-name">${user}</span>
					            <a href="" class="logout" id="login-logout">
					                <img src="./assets/images/icon/logout.png" alt="">
					            </a>
				        </c:when>
				    	<c:otherwise>
				            <a href="" class="etc__link d-flex" id="etc-login">로그인</a>
				            <a href="" class="etc__link etc__link--bg d-flex" id="member-login">회원가입</a>
				    	</c:otherwise>
				    </c:choose>
	        </div>
	    </div>
	</header>

<script>
    $(document).ready(function(){
    	
		var no = "<%=request.getParameter("menu_no") %>";
		
    	var url = window.location.pathname;
    	
    	var idx = url.lastIndexOf("/");
    	var length = url.length;
    	
    	if(length-idx == 1 || url.substring(idx,length) == "/main.do") {
    		$('.header').removeClass("header--sub");
    		$('.etc__link').removeClass("etc__link--bgWhite");
    	} else {
    		$('.header').addClass("header--sub");
    		$('.etc__link').addClass("etc__link--bgWhite");
    	}
    });
    
    $('.nav__link').on('click', function(){
    	var value = $(this).attr("data-val");
   		$('#menu_no').val(value);
    	if(value == "1") {
   			document.mainform.action = "counsel_resist.do";
    	} else if(value == "2") {
   			document.mainform.action = "counsel_resist.do";
    	} else if(value == "3") {
   			document.mainform.action = "counsel_resist.do";
    	}
    	
		document.mainform.submit();
    	
    });
    
    
    
    
</script>