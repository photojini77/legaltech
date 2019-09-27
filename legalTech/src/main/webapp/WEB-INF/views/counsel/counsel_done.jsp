<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true" />
<title>법무부 자문료 신청 완료</title>
    <link rel="stylesheet" href="assets/plugins/slick/slick.css"/>
    <link rel="stylesheet" href="assets/plugins/jquery-ui/jquery-ui.min.css"/>
    <link rel="stylesheet" href="assets/css/main.css" />
    <script src="assets/plugins/jquery.js"></script>
    <script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="assets/plugins/slick/slick.js"></script>
    <script src="assets/js/build.js"></script>
    <script src="assets/js/jquery-1.11.2.min.js"></script>
    
</head>
<body>
<div class="wrapper">
<form id="mainform" name="mainform" method="post" action="">
	<jsp:include page="../common/topMenu.jsp" flush="false" />

<div class="container">

    <div class="qnaIcon d-flex">문의</div>
    <div class="qnaWrapper">
        <div class="qna__bg"></div>
        <div class="qnaBox"></div>
    </div>

    <div class="sub">
        <div class="con1">
            <div class="visual">
                <div class="visual__txt">
                    <div class="wrap d-flex d-column">
                        <h2>법무부 자문료 신청</h2>
                        <p>법률자문 지원 서비스</p>
                    </div>
                </div>
                <div class="visual__step">
                    <div class="wrap d-flex">
                        <div class="visual__step__item d-flex">신청</div>
                        <div class="visual__step__item d-flex">약정</div>
                        <div class="visual__step__item d-flex is-active">완료</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content con2 con--pb">
            <div class="wrap">
                <div class="application-completed">
                    자문료 신청이 완료되었습니다.<br/>
                    이용해주셔서 감사합니다.
                </div>
                <div class="btnBox d-flex">
                    <a href="javascript:;" class="btn btn--gold d-flex" id="go_main">메인페이지로</a>
                </div>
            </div>
        </div>
    </div>
    <div class="ongoing d-flex">
        대기 중
    </div>
</div>
<jsp:include page="../common/footer.jsp" flush="false" />
</form>
</div>

<script type="text/javascript">
	
	$(document).ready(function(){
		

	});
	
	$('#go_main').click(function(){
		location.href="main.do"
	});

	$('#go_document').click(function(){
		$('#menu_no').val('1');
    	document.mainform.action = "contract_document.do";
		document.mainform.submit();
	});

	// func
	$('.qnaIcon').click(function () {
		$.ajax({
			url: "qna_list.ajax",
			type: "GET",
			//data : data,
			success:function(result){
				$(".qnaBox").html(result);
		        var objDiv = document.getElementById("messages_body");
		        objDiv.scrollTop = objDiv.scrollHeight;
			}
		})//.ajax
	})
	
	</script>
</body>
</html>