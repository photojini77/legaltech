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
            <div class="conTit">
                <div class="wrap">
                    <h3>완료</h3>
                    <p>창업에 필요한 법률 문서 신청단계입니다. 자세한 내용은 서류 제출 안내를 참고 바랍니다.</p>
                </div>
            </div>
            <div class="con__row con__row--survey">
                <div class="tabBox tabBox--step">
                    <div class="tab__head">
                        <div class="wrap d-flex">
                            <a href="javascript:;" class="tab__link" id="contract_done">본인부담금 납부</a>
                            <a href="javascript:;" class="tab__link" id="go_document">법률자문용역확인서</a>
                            <a href="javascript:;" class="tab__link is-active">만족도 조사</a>
                        </div>
                    </div>
                    <div class="tab__body">
                        <div class="con__item">
                            <div class="wrap">
                                <div class="con__row d-flex">
                                    <div class="form__required d-flex mBn">
                                        필수입력항목
                                    </div>
                                </div>
                                <div class="con__row">
                                    <div class="table">
                                        <table>
                                            <colgroup>
                                                <col width="165px" />
                                                <col />
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>성명</th>
                                                    <td>ㅇㅇㅇ</td>
                                                </tr>
                                                <tr>
                                                    <th>작성일</th>
                                                    <td>2019-09-01</td>
                                                </tr>
                                                <tr>
                                                    <th>전화 번호</th>
                                                    <td>02-0000-0000</td>
                                                </tr>
                                                <tr>
                                                    <th>휴대폰 번호</th>
                                                    <td>010-0000-0000</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="con__row">
                <div class="wrap">
                    <div class="form__item form__item--type2">
                        <div class="form__body">
                            <div class="form__row form__row--column d-flex d-column">
                                <div class="form__txt d-flex">
                                    1. 귀사에서 수진한 법률 자문이 어느 정도 효과가 있다고 생각하십니까?
                                </div>
                                <div class="form__inputBox d-flex">
                                    <div class="form__radio d-flex">
                                        <label for="o1" class="d-flex">
                                            <input type="radio" class="blind" id="o1" name="oo" /><span></span>매우효과적
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="o2" class="d-flex">
                                            <input type="radio" class="blind" id="o2" name="oo"/><span></span>효과적
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="o3" class="d-flex">
                                            <input type="radio" class="blind" id="o3" name="oo"/><span></span>보통
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="o4" class="d-flex">
                                            <input type="radio" class="blind" id="o4" name="oo"/><span></span>전혀 효과가 없다
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="o5" class="d-flex">
                                            <input type="radio" class="blind" id="o5" name="oo"/><span></span>없음
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form__row form__row--column d-flex d-column">
                                <div class="form__txt d-flex">
                                    2. 귀사가 수진한 자문 분야에 대한 변호사의 전문성은 어떠합니까?
                                </div>
                                <div class="form__inputBox d-flex">
                                    <div class="form__radio d-flex">
                                        <label for="q1" class="d-flex">
                                            <input type="radio" class="blind" id="q1" name="qo"/><span></span>매우만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="q2" class="d-flex">
                                            <input type="radio" class="blind" id="q2" name="qo"/><span></span>만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="q3" class="d-flex">
                                            <input type="radio" class="blind" id="q3" name="qo"/><span></span>보통
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="q4" class="d-flex">
                                            <input type="radio" class="blind" id="q4" name="qo"/><span></span>불만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="q5" class="d-flex">
                                            <input type="radio" class="blind" id="q5" name="qo"/><span></span>매우불만족
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form__row form__row--column d-flex d-column">
                                <div class="form__txt d-flex">
                                    3. 변호사가 수행한 개선과제 및 실행방안에 대한 신뢰성은 어떠합니까?
                                </div>
                                <div class="form__inputBox d-flex">
                                    <div class="form__radio d-flex">
                                        <label for="w1" class="d-flex">
                                            <input type="radio" class="blind" id="w1" name="wo"/><span></span>매우만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="w2" class="d-flex">
                                            <input type="radio" class="blind" id="w2" name="wo"/><span></span>만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="w3" class="d-flex">
                                            <input type="radio" class="blind" id="w3" name="wo"/><span></span>보통
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="w4" class="d-flex">
                                            <input type="radio" class="blind" id="w4" name="wo"/><span></span>불만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="w5" class="d-flex">
                                            <input type="radio" class="blind" id="w5" name="wo"/><span></span>매우불만족
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form__row form__row--column d-flex d-column">
                                <div class="form__txt d-flex">
                                    4. 자문 결과는 귀사에서 활용하는 데에 적합하도록 현실성이 있게 도출되었습니까?
                                </div>
                                <div class="form__inputBox d-flex">
                                    <div class="form__radio d-flex">
                                        <label for="e1" class="d-flex">
                                            <input type="radio" class="blind" id="e1" name="eo"/><span></span>매우만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="e2" class="d-flex">
                                            <input type="radio" class="blind" id="e2" name="eo"/><span></span>만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="e3" class="d-flex">
                                            <input type="radio" class="blind" id="e3" name="eo"/><span></span>보통
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="e4" class="d-flex">
                                            <input type="radio" class="blind" id="e4" name="eo"/><span></span>불만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="e5" class="d-flex">
                                            <input type="radio" class="blind" id="e5" name="eo"/><span></span>매우불만족
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form__row form__row--column d-flex d-column">
                                <div class="form__txt d-flex">
                                    5. 변호사는 법률자문을 수행하면서 성실하게 진행하였습니까?
                                </div>
                                <div class="form__inputBox d-flex">
                                    <div class="form__radio d-flex">
                                        <label for="r1" class="d-flex">
                                            <input type="radio" class="blind" id="r1" name="ro"/><span></span>매우만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="r2" class="d-flex">
                                            <input type="radio" class="blind" id="r2" name="ro"/><span></span>만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="r3" class="d-flex">
                                            <input type="radio" class="blind" id="r3" name="ro"/><span></span>보통
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="r4" class="d-flex">
                                            <input type="radio" class="blind" id="r4" name="ro"/><span></span>불만족
                                        </label>
                                    </div>
                                    <div class="form__radio d-flex">
                                        <label for="r5" class="d-flex">
                                            <input type="radio" class="blind" id="r5" name="ro"/><span></span>매우불만족
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form__row form__row--column d-flex d-column">
                                <div class="form__txt d-flex">
                                    6. 사업 진행 중 불편사항이나 기타 의견이 있으시면 작성해주시기 바랍니다.
                                </div>
                                <div class="form__textarea">
                                    <textarea></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btnBox d-flex">
                <a href="javascript:;" class="btn d-flex" id="counsel_done">다음으로</a>
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

	$('#go_document').click(function(){
		$('#menu_no').val('1');
    	document.mainform.action = "contract_document.do";
		document.mainform.submit();
	});

	$('#counsel_done').click(function(){
		$('#menu_no').val('1');
    	document.mainform.action = "counsel_done.do";
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