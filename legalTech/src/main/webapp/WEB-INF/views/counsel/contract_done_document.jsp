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
<title>Document</title>
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
        <div class="qnaBox">
            
        </div>
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
            <div class="conTit">
                <div class="wrap">
                    <h3>완료</h3>
                    <p>창업에 필요한 법률 문서 신청단계입니다. 자세한 내용은 서류 제출 안내를 참고 바랍니다.</p>
                </div>
            </div>
            <div class="tabBox tabBox--step">
                <div class="tab__head">
                    <div class="wrap d-flex">
                        <a href="javascript:;" class="tab__link" id="contract_done">본인부담금 납부</a>
                        <a href="javascript:;" class="tab__link is-active">법률자문용역확인서</a>
                        <a href="javascript:;" class="tab__link satisfied_research">만족도 조사</a>
                    </div>
                </div>
                <div class="tab__body">
                    <div class="contract">
                        <div class="wrap">
                            <div class="contract__head d-flex">경영진단식 법률자문 용역약정서</div>
                            <div class="contract__body">
                                <div class="contract__item">
                                    <div class="contract__row contract__row--txt d-flex">
                                        아직 법률자문용역확인서가 업로드되지 않았습니다.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btnBox d-flex">
                <a href="javascript:;" class="btn d-flex satisfied_research">다음으로</a>
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
	
	$('#contract_done').click(function(){
		$('#menu_no').val('1');
    	document.mainform.action = "contract_done.do";
		document.mainform.submit();
	});

	$('.satisfied_research').click(function(){
		$('#menu_no').val('1');
    	document.mainform.action = "satisfied_research.do";
		document.mainform.submit();
	});

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