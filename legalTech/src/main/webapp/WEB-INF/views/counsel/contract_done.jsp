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
<title>법무부 자문료 신청</title>
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

    <div class="qnaIcon d-flex" style="cursor:help">문의</div>
    <div class="qnaWrapper">
        <div class="qna__bg"></div>
        <div class="qnaBox">
        <!-- 
            <div class="qna__head d-flex">
                <h2>
                    문의
                </h2>
                <div class="qna__close"></div>
            </div>
            <div class="qna__body d-flex">
                <div class="messages">
                    <div class="messages__head d-flex">
                        <div class="icon">
                            <img src="./assets/images/icon/oval.png" alt="" />
                        </div>
                        <div class="txt">
                            <h3>법무법인 세종</h3>
                            <p>평균 응답시간: 1시간 내외 / 연락가능시간: 0~0시</p>
                        </div>
                    </div>
                    <div class="messages__body">
                        <ul>
                            <li class="d-flex">
                                <div class="icon">
                                    <img src="./assets/images/icon/oval.png" alt="" />
                                </div>
                                <div class="txtArea">
                                    <div class="txtArea__name">법무법인 세종</div>
                                    <div class="txtArea__box d-flex">
                                        <div class="txtArea__txt">
                                            <p>
                                                안녕하세요.<br/>
                                                기업현황확인표 내용 중 일부가 누락되었으니 이 점 참고하시어<br/>
                                                다시 파일 전달 부탁드립니다.
                                            </p>
                                        </div>
                                        <div class="txtArea__time">오후 11:10</div>
                                    </div>
                                </div>
                            </li>
                            <li class="d-flex right">
                                <div class="txtArea">
                                    <div class="txtArea__box d-flex">
                                        <div class="txtArea__time">오후 11:10</div>
                                        <div class="txtArea__txt">
                                            <p>
                                                안녕하세요.<br/>
                                                기업현황확인표 다시 작성하여 보내드립니다. 이번에도 누락된<br/>
                                                내용이 있는지 검수해주시면 감사하겠습니다.
                                            </p>
                                            <div class="txtArea__file">
                                                <a href="" class="d-flex file__link">
                                                    <div class="file__thumb">
                                                        <div class="img d-flex"></div>
                                                        <div class="download">

                                                        </div>
                                                    </div>
                                                    <div class="file__info">
                                                        <h4>기업현황확인표</h4>
                                                        <p class="d-flex">
                                                            Click to download
                                                            <span class="fileSize">246.3KB</span>
                                                        </p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="d-flex right">
                                <div class="txtArea">
                                    <div class="txtArea__box d-flex">
                                        <div class="txtArea__time">오후 11:10</div>
                                        <div class="txtArea__txt">
                                            <p>
                                                안녕하세요.<br/>
                                                기업현황확인표 다시 작성하여 보내드립니다. 이번에도 누락된<br/>
                                                내용이 있는지 검수해주시면 감사하겠습니다.
                                            </p>
                                            <div class="txtArea__file">
                                                <a href="" class="d-flex file__link">
                                                    <div class="file__thumb">
                                                        <div class="img d-flex"></div>
                                                        <div class="download">

                                                        </div>
                                                    </div>
                                                    <div class="file__info">
                                                        <h4>기업현황확인표</h4>
                                                        <p class="d-flex">
                                                            Click to download
                                                            <span class="fileSize">246.3KB</span>
                                                        </p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="d-flex">
                                <div class="icon">
                                    <img src="./assets/images/icon/oval.png" alt="" />
                                </div>
                                <div class="txtArea">
                                    <div class="txtArea__name">법무법인 세종</div>
                                    <div class="txtArea__box d-flex">
                                        <div class="txtArea__txt">
                                            <p>
                                                안녕하세요.<br/>
                                                기업현황확인표 내용 중 일부가 누락되었으니 이 점 참고하시어<br/>
                                                다시 파일 전달 부탁드립니다.
                                            </p>
                                        </div>
                                        <div class="txtArea__time">오후 11:10</div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="messages__foot">
                        <div class="userTxt">
                            <div class="d-flex data__fileBox">
                                <label for="f1" class="data__upload data__upload--file d-flex">
                                    <input type="file" class="data__file blind" id="f1" />
                                </label>
                            </div>
                            <textarea placeholder="코멘트를 입력해주세요."></textarea>
                        </div>
                        <a href="" class="data__upload d-flex">전송하기</a>
                    </div>
                </div>
            </div>
        -->
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
                        <a href="javascript:;" class="tab__link is-active">본인부담금 납부</a>
                        <a href="javascript:;" class="tab__link go_document" >법률자문용역확인서</a>
                        <a href="javascript:;" class="tab__link" id="satisfied_research">만족도 조사</a>
                    </div>
                </div>
                <div class="tab__body">
                    <div class="con__item">
                        <div class="wrap">
                            <div class="con__row d-flex">
                                <div class="form__inputBox d-flex">
                                    <div class="form__radio form__radio--big d-flex">
                                        <label for="ee1" class="d-flex">
                                            <input type="radio" class="blind" id="ee1" checked /><span></span>무통장입금
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="con__row">
                                <div class="table">
                                    <table>
                                        <colgroup>
                                            <col width="165px"/>
                                            <col/>
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>결제금액</th>
                                                <td>100,000원</td>
                                            </tr>
                                            <tr>
                                                <th>계좌번호</th>
                                                <td>농협 301-0197-8689-91</td>
                                            </tr>
                                            <tr>
                                                <th>예금주</th>
                                                <td>법무부 상사법무과</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="data__Warning">입금이 완료되면 법률자문용역확인서를 확인하실 수 있습니다.</div>
            <div class="btnBox d-flex">
                <a href="javascript:;" class="btn d-flex go_document" >다음으로</a>
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
	
	$('.go_document').click(function(){
		$('#menu_no').val('1');
    	document.mainform.action = "contract_document.do";
		document.mainform.submit();
	});

	$('#satisfied_research').click(function(){
		$('#menu_no').val('1');
    	document.mainform.action = "satisfied_research.do";
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