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
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Jua|Noto+Sans+KR&display=swap" rel="stylesheet" />
    
    <style type="text/css">
    	.visual__txt h2 { font-family: 'Noto Sans KR', sans-serif; letter-spacing: 2.5px; font-size: 3.5em;}
    	.visual__txt p { font-family:'Jua', sans-serif; }
    </style>
    
</head>
<body>

<div class="wrapper">

<form id="mainform" name="mainform" method="post" action="">
	<jsp:include page="../common/topMenu.jsp" flush="false" />
</form>
<form id="mainform2" name="mainform2" method="post" enctype="multipart/form-data">
	<div class="container">
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
	                        <div class="visual__step__item d-flex is-active">신청</div>
	                        <div class="visual__step__item d-flex">약정</div>
	                        <div class="visual__step__item d-flex">완료</div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="content con2 con--pb">
	            <div class="conTit">
	                <div class="wrap">
	                    <h3>신청</h3>
	                    <p>창업에 필요한 법률 문서 신청단계입니다. 자세한 내용은 서류 제출 안내를 참고 바랍니다.</p>
	                </div>
	            </div>
	            <div class="data">
	                <div class="wrap d-flex">
	                    <div class="data__item data__item--complete d-flex d-column">
	                        <span class="data__mark d-flex">필수</span>
	                        <div class="data__txt">
	                            <h3>기업현황표</h3>
	                            <p>창업을 시작하는 사람들을 위함</p>
	                            <a href="javascript:;" class="data__upload d-flex" id="company_info">보기</a>
	                        </div>
	                    </div>
	                    <div class="data__item d-flex d-column">
	                        <span class="data__mark d-flex">필수</span>
	                        <div class="data__txt">
	                            <h3>4대보험 가입자 명부</h3>
	                            <p>창업을 시작하는 사람들을 위함</p>
	                            <div class="d-flex data__fileBox">
	                                <label for="f1" class="data__upload data__upload--file d-flex">
	                                    <input type="file" class="data__file blind" id="f1">
	                                    파일 업로드
	                                </label>
	                                <span class="data__fileTxt text-ellipsis">중소기업확인서_스..</span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="data__item d-flex d-column">
	                        <span class="data__mark d-flex">필수</span>
	                        <div class="data__txt">
	                            <h3>사업자 등록증</h3>
	                            <p>창업을 시작하는 사람들을 위함</p>
	                            <div class="d-flex data__fileBox">
	                                <label for="f2" class="data__upload data__upload--file d-flex">
	                                    <input type="file" class="data__file blind" id="f2">
	                                    파일 업로드
	                                </label>
	                                <span class="data__fileTxt text-ellipsis">중소기업확인서_스..</span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="data__item d-flex d-column">
	                        <span class="data__mark d-flex">필수</span>
	                        <div class="data__txt">
	                            <h3>법인인감증명서</h3>
	                            <p>창업을 시작하는 사람들을 위함</p>
	                            <div class="d-flex data__fileBox">
	                                <label for="f3" class="data__upload data__upload--file d-flex">
	                                    <input type="file" class="data__file blind" id="f3">
	                                    파일 업로드
	                                </label>
	                                <span class="data__fileTxt text-ellipsis">중소기업확인서_스..</span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="data__item d-flex d-column">
	                        <span class="data__mark d-flex">필수</span>
	                        <div class="data__txt">
	                            <h3>법인등기부등본</h3>
	                            <p>창업을 시작하는 사람들을 위함</p>
	                            <div class="d-flex data__fileBox">
	                                <label for="f4" class="data__upload data__upload--file d-flex">
	                                    <input type="file" class="data__file blind" id="f4">
	                                    파일 업로드
	                                </label>
	                                <span class="data__fileTxt text-ellipsis">중소기업확인서_스..</span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="data__item data__item--complete d-flex d-column">
	                        <span class="data__mark d-flex">필수</span>
	                        <div class="data__txt">
	                            <h3>중소기업확인서</h3>
	                            <p>창업을 시작하는 사람들을 위함</p>
	                            <div class="d-flex data__fileBox">
	                                <label for="f5" class="data__upload data__upload--file d-flex">
	                                    <input type="file" class="data__file blind" id="f5">
	                                    파일 업로드
	                                </label>
	                                <span class="data__fileTxt text-ellipsis">중소기업확인서_스..</span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="data__item data__item--choice d-flex d-column">
	                        <span class="data__mark d-flex">필수</span>
	                        <div class="data__txt">
	                            <h3 class="d-flex">
	                                벤처기업확인서 
	                                <span class="small">(해당되는 경우)</span>
	                            </h3>
	                            <p>창업을 시작하는 사람들을 위함</p>
	                            <div class="d-flex data__fileBox">
	                                <label for="f6" class="data__upload data__upload--file d-flex">
	                                    <input type="file" class="data__file blind" id="f6">
	                                    파일 업로드
	                                </label>
	                                <span class="data__fileTxt text-ellipsis">중소기업확인서_스..</span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="data__item data__item--choice d-flex d-column">
	                        <span class="data__mark d-flex">필수</span>
	                        <div class="data__txt">
	                            <h3 class="d-flex">
	                                법률자문 요청서
	                            </h3>
	                            <p>창업을 시작하는 사람들을 위함</p>
	                            <a href="" class="data__upload d-flex">작성하기</a>
	                        </div>
	                    </div>
	                    <div class="data__item data__item--site d-flex d-column">
	                        <a  href="" class="data__site d-flex">
	                            대법원 인터넷등기소
	                            <img src="./assets/images/icon/site.png" alt="">
	                        </a>
	                        <a  href="" class="data__site d-flex">
	                            4대사회보험정보연계센터
	                            <img src="./assets/images/icon/site.png" alt="">
	                        </a>
	                        <a  href="" class="data__site d-flex">
	                            중소기업현황정보시스템
	                            <img src="./assets/images/icon/site.png" alt="">
	                        </a>
	                    </div>
	                </div>
	            </div>
	            <div class="btnBox d-flex">
	                <a href="" class="btn d-flex">다음으로</a>
	            </div>
	        </div>
	    </div>
	    <div class="ongoing d-flex">
	        신청중
	    </div>
	</div>

	<div class="popupBox">
	    <div class="popup__bg"></div>
	    <div class="popup">
	        <div class="wrap">
	            <div class="popupTit d-flex">
	            	기업현황표
	            	<div class="closeBtn"></div>
	            	<div class="closeBtn2"></div>
	            </div>
	            <div class="formBox">
	                <div class="form__item">
	                    <div class="form__head">기업현황</div>
	                    <div class="form__body">
	                        <div class="form__row d-flex">
	                            <div class="form__txt">회사(업체)명</div>
	                            <div class="form__input">
	                                <input type="text" id="company_name" name ="company_name" placeholder="회사명 혹은 업체명을 입력해주세요." />
	                            </div>
	                        </div>
	                        <div class="form__row form__row--jc d-flex">
	                            <div class="form__col d-flex">
	                                <div class="form__txt">대표자 성명</div>
	                                <div class="form__input form__input--w200">
	                                    <input type="text" id="owner_name" name ="owner_name" placeholder="성명을 입력해주세요." />
	                                </div>
	                            </div>
	                            <div class="form__col d-flex">
	                                <div class="form__txt text-center">
	                                    대표자<br/>
	                                    주민번호
	                                </div>
	                                <div class="form__inputBox d-flex">
	                                    <div class="form__input form__input--w200">
	                                        <input type="text" id="owner_id1" name ="owner_id1" maxlength="6" numberOnly/>
	                                    </div>
	                                    <span class="form__hyphen">-</span>
	                                    <div class="form__input form__input--w200">
	                                        <input type="password" id="owner_id2" name ="owner_id2" maxlength="7" numberOnly/>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="form__row form__row--jc d-flex">
	                            <div class="form__col d-flex">
	                                <div class="form__txt">
	                                    사업자등록번호<br/>
	                                    (법인등록번호)
	                                </div>
	                                <div class="form__inputBox d-flex">
	                                    <div class="form__input form__input--w120">
	                                        <input type="text" id="company_id1" name ="company_id1" maxlength="3" numberOnly/>
	                                    </div>
	                                    <span class="form__hyphen">-</span>
	                                    <div class="form__input form__input--w120">
	                                        <input type="text" id="company_id2" name ="company_id2" maxlength="3" numberOnly/>
	                                    </div>
	                                    <span class="form__hyphen">-</span>
	                                    <div class="form__input form__input--w120">
	                                        <input type="text" id="company_id3" name ="company_id3" maxlength="5" numberOnly/>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="form__col d-flex">
	                                <div class="form__txt text-center">설립년월일</div>
	                                <div class="form__input form__input--w250">
	                                    <input type="text" id="birth" name ="birth" maxlength="6" placeholder="YYMMDD 형태로 입력해주세요." numberOnly>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="form__row d-flex">
	                            <div class="form__txt">본사주소</div>
	                            <div class="form__inputBox form__inputBox--jc d-flex">
	                                <div class="form__input">
	                                    <input type="text" id="company_addr" name ="company_addr" placeholder="">
	                                </div>
	                                <div class="form__btn">
	                                    <button id="goPopup">우편번호</button>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="form__row d-flex">
	                            <div class="form__txt">공장주소</div>
	                            <div class="form__inputBox form__inputBox--jc d-flex">
	                                <div class="form__input">
	                                    <input type="text" id="factory_addr" name ="factory_addr" placeholder="">
	                                </div>
	                                <div class="form__btn">
	                                    <button id="goPopup1">우편번호</button>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="form__row d-flex">
	                            <div class="form__txt">홈페이지</div>
	                            <div class="form__input">
	                                <input type="text" id="homepage" name ="homepage" placeholder="">
	                            </div>
	                        </div>
	                        <div class="form__row d-flex">
	                            <div class="form__txt">이메일</div>
	                            <div class="form__inputBox form__inputBox--jc d-flex">
	                                <div class="form__input form__input--w240">
	                                    <input type="text" id="email1" name ="email1" placeholder="이메일 ID를 입력해주세요.">
	                                </div>
	                                <span class="form__at">@</span>
	                                <div class="form__input form__input--w240">
	                                    <input type="text" id="email2" name ="email2" placeholder="" />
	                                </div>
	                                <div class="form__input form__input--w240 form__select">
	                                    <select name="email3" id="email3">
	                                        <option value="">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="nate.com">nate.com</option>
											<option value="empal.com">empal.com</option>
											<option value="daum.net">daum.net</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="google.com">google.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hotmail.com">hotmail.com</option>
	                                    </select>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="form__row form__row--jc d-flex">
	                            <div class="form__col d-flex">
	                                <div class="form__txt">주업종</div>
	                                <div class="form__input form__input--w150">
	                                    <input type="text" id="main_job" name ="main_job" placeholder="">
	                                </div>
	                            </div>
	                            <div class="form__col d-flex">
	                                <div class="form__txt text-center">주생산품</div>
	                                <div class="form__inputBox d-flex">
	                                    <div class="form__input form__input--w150">
	                                        <input type="text" id="main_product" name ="main_product">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="form__col d-flex">
	                                <div class="form__txt text-center">
	                                    표준산업<br/>
	                                    분류코드
	                                </div>
	                                <div class="form__inputBox d-flex">
	                                    <div class="form__input form__input--w150">
	                                        <input type="text" id="industry_cd" name ="industry_cd">
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="form__row form__row--jc d-flex">
	                            <div class="form__col d-flex">
	                                <div class="form__txt">매출액</div>
	                                <div class="form__inputBox d-flex">
	                                    <div class="form__input form__input--w300">
	                                        <input type="text" id="sell_amt" name ="sell_amt" placeholder="" onkeyup="javascript:format2(this)"/>
	                                    </div>
	                                    <span class="form__num">원</span>
	                                </div>
	                            </div>
	                            <div class="form__col d-flex">
	                                <div class="form__txt">상시 종업원수</div>
	                                <div class="form__inputBox d-flex">
	                                    <div class="form__input form__input--w300">
	                                        <input type="text" id="employee_cnt" name ="employee_cnt" placeholder="" numberOnly />
	                                    </div>
	                                    <span class="form__num">명</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="form__row d-flex">
	                            <div class="form__txt">최근 상담경험</div>
	                            <div class="form__inputBox d-flex">
	                                <div class="form__radio d-flex">
	                                    <label for="o1" class="d-flex">
	                                        <input type="radio" class="blind" id="o1" name="counsel_yn" value="Y"/><span></span>있음
	                                    </label>
	                                </div>
	                                <div class="form__radio d-flex">
	                                    <label for="n1" class="d-flex">
	                                        <input type="radio" class="blind" id="n1" name="counsel_yn" value="N"/><span></span>없음
	                                    </label>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="form__item">
	                    <div class="form__head">담당</div>
	                    <div class="form__body">
	                        <div class="form__row form__row--jc d-flex">
	                            <div class="form__col d-flex">
	                                <div class="form__txt">담당자 부서</div>
	                                <div class="form__input form__input--w350">
	                                    <input type="text" id="manager_team" name ="manager_team" placeholder="" />
	                                </div>
	                            </div>
	                            <div class="form__col d-flex">
	                                <div class="form__txt text-center">담당자 직위</div>
	                                <div class="form__inputBox d-flex">
	                                    <div class="form__input form__input--w300">
	                                        <input type="text" id="manager_level" name ="manager_level" />
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="form__row form__row--jc d-flex">
	                            <div class="form__col d-flex">
	                                <div class="form__txt">담당자 성명</div>
	                                <div class="form__input form__input--w250">
	                                    <input type="text" id="manager_name" name ="manager_name" placeholder="" />
	                                </div>
	                            </div>
	                            <div class="form__col d-flex">
	                                <div class="form__txt text-center">담당자 연락처</div>
	                                <div class="form__inputBox d-flex">
	                                    <div class="form__input form__input--w120">
	                                        <input type="text" id="manager_ph1" name ="manager_ph1" maxlength="4" numberOnly/>
	                                    </div>
	                                    <span class="form__hyphen">-</span>
	                                    <div class="form__input form__input--w120">
	                                        <input type="text" id="manager_ph2" name ="manager_ph2" maxlength="4" numberOnly/>
	                                    </div>
	                                    <span class="form__hyphen">-</span>
	                                    <div class="form__input form__input--w120">
	                                        <input type="text" id="manager_ph3" name ="manager_ph3" maxlength="4" numberOnly/>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="form__row d-flex">
	                            <div class="form__txt">담당자 이메일</div>
	                            <div class="form__inputBox form__inputBox--jc d-flex">
	                                <div class="form__input form__input--w240">
	                                    <input type="text" placeholder="이메일 ID를 입력해주세요." id="manager_em1" name ="manager_em1" />
	                                </div>
	                                <span class="form__at">@</span>
	                                <div class="form__input form__input--w240">
	                                    <input type="text" placeholder="" id="manager_em2" name ="manager_em2" />
	                                </div>
	                                <div class="form__input form__input--w240 form__select">
	                                    <select id="manager_em3" name ="manager_em3">
	                                        <option value="">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="nate.com">nate.com</option>
											<option value="empal.com">empal.com</option>
											<option value="daum.net">daum.net</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="google.com">google.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hotmail.com">hotmail.com</option>
	                                    </select>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="form__item">
	                    <div class="form__head">비고</div>
	                    <div class="form__body">
	                        <div class="form__row form__row--jc d-flex">
	                            <div class="form__textarea">
	                                <textarea id="bigo" name ="bigo"></textarea>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="form__item form__item--check">
	                    <div class="form__head d-flex">
	                        위 내용이 사실과 다름없음을 확인합니다.
	                        <span>2019년  08월  22일</span>
	                    </div>
	                    <div class="form__body d-flex d-column">
	                        <div class="form__row d-flex">
	                            <div class="form__txt">신청 업체</div>
	                            <div class="form__input form__input--w350 form__input--mf">
	                                <input type="text" id="apply_company" name ="apply_company" placeholder="" />
	                            </div>
	                        </div>
	                        <div class="form__row form__row--jc d-flex">
	                            <div class="form__col d-flex">
	                                <div class="form__txt">대표</div>
	                                <div class="form__input form__input--w120">
	                                    <input type="text" placeholder="" id="apply_ceo" name ="apply_ceo" />
	                                </div>
	                            </div>
	                            <div class="form__col d-flex">
	                                <div class="form__txt text-center">서명 또는 인</div>
	                                <div class="form__inputBox">
	                                    <div class="form__fileUpload">
	                                        <label for="sign" class="d-flex" id="sign_upload" style="cursor:pointer">
	                                            <input type="file" name="sign" id="sign" class="blind" onchange="readURL(this)" />파일첨부
	                                        </label>
	                                        <div id="img_preview" style="display:none;height:40">
		                                        <img id="img_view" name="img_view" src="#" alt="인감 이미지" class="sign_img"/>
		                                        <span class="btn-del" title="삭제" onclick="javascript:img_del()"></span>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="btnBox d-flex">
	                <a href="" class="btn btn--white d-flex">초기화</a>
	                <a href="javascript:;" class="btn d-flex" id="regi-submit">작성완료</a>
	            </div>
	        </div>
	    </div>
	
	    <script>
	        $(document).ready(function(){
	        	$('.popupBox').hide();
	        	/*$('.popup__bg').click(function(){
	            	if(confirm("저장없이 나가시겠습니까?")) {
		                $(this).parents('.popupBox').hide();
	            	}
	            });*/
	            $('#company_info').click(function(){
	                $('.popupBox').show();
	            });
	            
	            $('.closeBtn').click(function(){
	                $('.popupBox').hide();
	            });
	            
	        });
	        
	        $('#goPopup').click(function(){
	        	event.preventDefault();
	    		window.open("zip_test_popup2.do?prt=1","pop","width=570,height=420, scrollbars=yes, resizable=yes");
	    	});

	        $('#goPopup1').click(function(){
	        	event.preventDefault();
	    		window.open("zip_test_popup2.do?prt=2","pop","width=570,height=420, scrollbars=yes, resizable=yes");
	    	});

	    	function jusoCallBack(prt, roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn){
	    			if(prt == "1") {
		    			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		    			$('#company_addr').val(roadFullAddr);
		    			// $('#zip').val(zipNo);
	    			} else {
		    			$('#factory_addr').val(roadFullAddr);
		    			 // $('#zip').val(zipNo);
	    			}
	    	}
	    	
	    	$('#email3').on('change', function() {
	    		  if( this.value != "" ) {
	    			  $('#email2').attr("disabled",true);
	    			  $('#email2').css("background", "#f9f9f9");
	    		  } else {
	    			  $('#email2').removeAttr("disabled"); 
	    			  $('#email2').css("background", "#fff");
	    		  }
    		});
	    	
	    	$('#manager_em3').on('change', function() {
	    		  if( this.value != "" ) {
	    			  $('#manager_em2').attr("disabled",true);
	    			  $('#manager_em2').css("background", "#f9f9f9");
	    		  } else {
	    			  $('#manager_em2').removeAttr("disabled"); 
	    			  $('#manager_em2').css("background", "#fff");
	    		  }
    		});
	    	
	    	
	    	function readURL(input) {
	    		var  str_dotlocation,str_ext,str_low;
	    		str_value  = $('#sign').val();
	    		str_low   = str_value.toLowerCase(str_value);
	    		str_dotlocation = str_low.lastIndexOf(".");
	    		str_ext   = str_low.substring(str_dotlocation+1);

	    		if (str_ext != "png" && str_ext != "jpg" && str_ext != "gif" && str_ext != "jpeg") {
	    		     alert("파일 형식이 맞지 않습니다.\n png,jpg,gif,jpeg 만\n 업로드가 가능합니다!");
	    		  	 $('#sign').val('');
	    		     return;
	    		}
	    	    if (input.files && input.files[0]) {
	    	        var reader = new FileReader();
	    	        reader.onload = function (e) {
	    	            $('#img_view').attr('src', e.target.result);
	    	        }
	    	        reader.readAsDataURL(input.files[0]);
	    	        $('#sign_upload').css("display","none");
	    	        $('#img_preview').css("display","flex");
	    	    }
	    	}
	    	
	    	function img_del() {
	    		$('#sign').val("");
	    		$('#img_preview').css("display","none");
    	        $('#sign_upload').css("display","flex");
	    	}
	    	
	    	$("input:text[numberOnly]").on("keyup", function() {
	    	    $(this).val($(this).val().replace(/[^0-9]/g,""));
	    	});
	    	
	    	//콤마찍기
	    	function comma(str) {
	    	    str = String(str);
	    	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	    	}
	    	 
	    	//콤마풀기
	    	function uncomma(str) {
	    	    str = String(str);
	    	    return str.replace(/[^\d]+/g, '');
	    	}
	    	 
	    	//값 입력시 콤마찍기
	    	function format2(obj) {
	    	    obj.value = comma(uncomma(obj.value));
	    	}
	    	
	    	$("#regi-submit").on("click",function(){
	    	
		    	if(confirm("저장하시겠습니까?")) {
					
					var form = $('#mainform2')[0];
			         var formData = new FormData(form);
			             $.ajax({
			                type: 'POST',
			                url: 'company_info_save.do',
			                data: formData,
			                processData: false,
			                dataType : "html",
			                contentType: false,
			                success: function(result){
			                    alert("success");
			                },
			                error : function(error) {
			                    alert("글 등록이 실패했습니다. 브라우저 버전이 낮아서 일 수 있으니 다른 브라우저에서 사용하시기 바랍니다.");
			                }
			            });
				}
	    	});
	    	
	    </script>
	</div>

<jsp:include page="../common/footer.jsp" flush="false" />
</form>
	
</div>
</body>
</html>