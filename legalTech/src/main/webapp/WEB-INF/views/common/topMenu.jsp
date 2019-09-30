<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<input type="hidden" id="menu_no" name="menu_no" value=""/>
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
	        	<c:set value="<%=session.getAttribute(\"userNm\") %>" var="nm" />
					<c:choose>
						<c:when test="${fn:length(user) gt 0}">
				            <span id="login-name" style="margin-right: 10px;">${nm}</span>
					            <a href="javascript:;" class="logout" id="login-logout">
					                <img src="./assets/images/icon/logout.png" alt="로그아웃" id="logout__img">
					            </a>
				        </c:when>
				    	<c:otherwise>
				            <a href="./login.do" class="etc__link d-flex" id="etc-login">로그인</a>
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
    		$('#login-name').css("color","#fff");
    		$('#logout__img').attr("src", "./assets/images/icon/logout2.png");
    	} else {
    		$('.header').addClass("header--sub");
    		$('#etc-login').addClass("etc__link--bgWhite");
    		$('#login-name').css("color","#333");
    		$('#logout__img').attr("src", "./assets/images/icon/logout.png");
    	}
    });
    
    $('.nav__link').on('click', function(){
    	var value = $(this).attr("data-val");
    	console.log("value  : " + value);
    	
   		$('#menu_no').val(value);
    	if(value == "1") {
   			document.mainform.action = "counsel_resist.do";
    	} else if(value == "2") {
   			document.mainform.action = "legal_lawer.do";
    	} else if(value == "3") {
   			document.mainform.action = "customer_center.do";
    	}
		document.mainform.submit();
    });
    
	$('#logout__img').click(function(){
		
		if(confirm("로그아웃 하시겠습니까?")) {
            $.ajax({
               type: 'POST',
               url: 'login_out.do',
               dataType:"text",
   				cache: false,
               success: function(result){
                   alert("정상적으로 로그아웃 되었습니다.");
                   location.href="./main.do";
               },
               error : function(error) {
                   alert("정상적으로 로그아웃 되지 않았습니다. 다시 확인해주세요.");
               }
           });
		}
	});
    
    
</script>