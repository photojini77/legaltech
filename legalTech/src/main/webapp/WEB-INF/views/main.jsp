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
    <link rel="stylesheet" href="./assets/plugins/slick/slick.css"/>
    <link rel="stylesheet" href="./assets/plugins/jquery-ui/jquery-ui.min.css"/>
    <link rel="stylesheet" href="./assets/css/main.css" />
    <script src="./assets/plugins/jquery.js"></script>
    <script src="./assets/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="./assets/plugins/slick/slick.js"></script>
    <script src="./assets/js/build.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Josefin+Sans&display=swap" rel="stylesheet"/>
    
    <style type="text/css">
    	.slide__txt p { font-family: 'Josefin Sans', sans-serif;}
    	.slide__txt h2 { font-family: 'Nanum Gothic', sans-serif; font-size:4.5em; margin-bottom: 30px;font-weight: 600;}
    	.board__head {cursor:pointer}
    </style>
</head>
<body>
    <script type="text/javascript" >
    
    function go_login() {
    	document.mainform.action = "./login.do";
		document.mainform.submit();	
    }

    function go_counsel() {
    	$('#menu_no').val("1");
		document.mainform.action = "./counsel_resist.do";
		document.mainform.submit();
    }
    
    </script>

<form id="mainform" name="mainform" action="" method="post">
<div class="wrapper">

<jsp:include page="common/topMenu.jsp" flush="false" />


<div class="container">
    <div class="main">
        <div class="con1">
            <div class="slide">
                <div class="slide__item slide1">
                    <div class="wrap d-flex">
                        <div class="slide__txt">
                            <h2>창업 법률자문 지원 서비스</h2>
                            <p>Legal Support Service</p>
                            <a href="javascript:go_counsel()" class="slide__link d-flex">자문료 신청</a>
                        </div>
                    </div>
                </div>
                <div class="slide__item slide2">
                    <div class="wrap d-flex">
                        <div class="slide__txt">
                            <h2>창업 법률자문 지원 서비스</h2>
                            <p>Legal Support Service</p>
                            <a href="javascript:go_counsel()" class="slide__link d-flex">자문료 신청</a>
                        </div>
                    </div>
                </div>
                <div class="slide__item slide3">
                    <div class="wrap d-flex">
                        <div class="slide__txt">
                            <h2>창업 법률자문 지원 서비스</h2>
                            <p>Legal Support Service</p>
                            <a href="javascript:go_counsel()" class="slide__link d-flex">자문료 신청</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <script>
                $(document).ready(function(){
                    $('.slide').slick({
                        autoplay: true,
                        autoplaySpeed: 5000,
                        slidesToShow: 1,
                        arrows: false,
                        dots: true,
                    });
                });
            </script>
        </div>
        <div class="content con2">
            <div class="con2__head">
                <div class="wrap d-flex d-column">
                    <div class="conTit">
                        <h3>자문료 신청 절차</h3>
                    </div>
                    <div class="con2__iPad">
                        <img src="./assets/images/i-pad.png" alt="자문료 신청 절차" />
                    </div>
                </div>
            </div>
            <ul class="con2__body">
                <li>
                    <div class="wrap d-flex">
                        <div class="con2__stepIcon">
                            <img src="./assets/images/icon/step-1.png" alt="신청" />
                            <p>
                                <span>01</span>신청
                            </p>
                        </div>
                        <div class="con2__stepInfo">
                            <h4>
                                창업에 필요한 법률 문서 신청 단계입니다. 아래 서류들의 준비가 필요합니다.
                            </h4>
                            <div class="con2__stepTxt">
                                <div class="stepTxt__row d-flex">
                                    <div class="stepTxt__col">
                                        <h5>필수서류</h5>
                                        <p>
                                            기업현황표, 4대보험 가입자 명부,<br/>
                                            법인등기부등본, 법인인감증명서(3개월 내<br/>
                                            발급), 사업자등록증, 중소기업확인서
                                        </p>
                                    </div>
                                    <div class="stepTxt__col">
                                        <h5>선택서류</h5>
                                        <p>
                                            벤처기업확인서(해당되는 경우),<br/>
                                            법률자문 요청서
                                        </p>
                                    </div>
                                </div>
                                <div class="stepTxt__row d-flex">
                                    <a href="" class="stepTxt__link d-flex">
                                        <span>대법원 인터넷등기소</span>
                                        <img src="./assets/images/icon/site.png" alt="대법원 인터넷등기소 링크" />
                                    </a>
                                    <a href="" class="stepTxt__link d-flex">
                                        <span>4대사회보험정보연계센터</span>
                                        <img src="./assets/images/icon/site.png" alt="4대사회보험정보연계센터 링크" />
                                    </a>
                                    <a href="" class="stepTxt__link d-flex">
                                        <span>중소기업현황정보시스템</span>
                                        <img src="./assets/images/icon/site.png" alt="중소기업현황정보시스템 링크" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="wrap d-flex">
                        <div class="con2__stepIcon">
                            <img src="./assets/images/icon/step-2.png" alt="약정" />
                            <p>
                                <span>02</span>약정
                            </p>
                        </div>
                        <div class="con2__stepInfo">
                            <h4>
                                자문료 신청을 하는 기업과 법무법인간의 서류를 확인하는 단계입니다.
                            </h4>
                            <div class="con2__stepTxt">
                                <div class="stepTxt__row d-flex">
                                    <div class="stepTxt__col">
                                        <h5>신청기업</h5>
                                        <p>
                                            용역약정서, 법률자문 수행계획서, 기업현황표,<br/>
                                            법인인감증명서, 4대보험 가입자 명부,<br/>
                                            법인등기부등본, 사업자등록증
                                        </p>
                                    </div>
                                    <div class="stepTxt__col">
                                        <h5>법무법인</h5>
                                        <p>
                                            용역약정서, 법률자문 수행계획서,<br/>
                                            법률자문 변호사 신청서, 법무법인 통장사본,<br/>
                                            법무법인 사업자등록증, 세금계산서
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="wrap d-flex">
                        <div class="con2__stepIcon">
                            <img src="./assets/images/icon/step-3.png" alt="용역확인" />
                            <p>
                                <span>03</span>용역확인
                            </p>
                        </div>
                        <div class="con2__stepInfo">
                            <h4>
                                신청 기업이 법무법인에 요청한 내용에 대해 용역을 확인하는 단계입니다.<br/>
                                상호간에 실시간으로 소통할 수 있습니다.
                            </h4>
                            <div class="con2__stepTxt">
                                <div class="stepTxt__row d-flex">
                                    <div class="stepTxt__col">
                                        <h5>업로드 가능한 파일형식</h5>
                                        <p>
                                            MS word, PPT, Excel, HWP
                                        </p>
                                    </div>
                                    <div class="stepTxt__col">
                                        <h5>업로드 가능한 파일용량</h5>
                                        <p>
                                            최대 5Mb
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="wrap d-flex">
                        <div class="con2__stepIcon">
                            <img src="./assets/images/icon/step-4.png" alt="완료" />
                            <p>
                                <span>04</span>완료
                            </p>
                        </div>
                        <div class="con2__stepInfo">
                            <h4>
                                용역 확인 절차까지 마무리되면 기업 측에서 본인부담금 납부 후<br/>
                                용역확인서 확인 및 만족도 조사가 진행됩니다.
                            </h4>
                            <div class="con2__stepTxt">
                                <div class="stepTxt__row stepTxt__row--triple d-flex">
                                    <div class="stepTxt__col">
                                        <h5>본인부담금 납부</h5>
                                        <p>
                                            무통장 입금
                                        </p>
                                    </div>
                                    <div class="stepTxt__col">
                                        <h5>법률자문용역확인서</h5>
                                        <p>
                                            인쇄 및 다운 가능
                                        </p>
                                    </div>
                                    <div class="stepTxt__col">
                                        <h5>만족도 조사</h5>
                                        <p>
                                            조사까지 마무리해야 자문료<br/>
                                            신청 완료
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="content con3 con--pb">
            <div class="conTit">
                <div class="wrap">
                    <h3>자주묻는 질문</h3>
                </div>
            </div>
            <div class="board">
                <div class="wrap">
                    <ul>
                        <li class="">
                            <div class="board__head">Q. 어떤 서비스인가요?</div>
                            <div class="board__body">
                                창업을 시작하는 사람들을 위해 법률 바우처를 제공하는 서비스입니다. 법무법인 세종이 만든 국내 유일 법률자문 지원 서비스입니다.<br/>
                                법무부 자문료 신청 메뉴에 접속하여 절차에 따라 신청하시면 됩니다.
                            </div>
                        </li>
                        <li class="">
                            <div class="board__head">Q. 서비스 비용은 얼마인가요?</div>
                            <div class="board__body">
                                창업을 시작하는 사람들을 위해 법률 바우처를 제공하는 서비스입니다. 법무법인 세종이 만든 국내 유일 법률자문 지원 서비스입니다.<br/>
                                법무부 자문료 신청 메뉴에 접속하여 절차에 따라 신청하시면 됩니다.
                            </div>
                        </li>
                        <li class="">
                            <div class="board__head">Q. 서비스를 이용하려면 무엇이 필요한가요?</div>
                            <div class="board__body">
                                창업을 시작하는 사람들을 위해 법률 바우처를 제공하는 서비스입니다. 법무법인 세종이 만든 국내 유일 법률자문 지원 서비스입니다.<br/>
                                법무부 자문료 신청 메뉴에 접속하여 절차에 따라 신청하시면 됩니다.
                            </div>
                        </li>
                        <li class="">
                            <div class="board__head">Q. 서비스를 이용하려면 별도의 프로그램을 설치해야 하나요?</div>
                            <div class="board__body">
                                창업을 시작하는 사람들을 위해 법률 바우처를 제공하는 서비스입니다. 법무법인 세종이 만든 국내 유일 법률자문 지원 서비스입니다.<br/>
                                법무부 자문료 신청 메뉴에 접속하여 절차에 따라 신청하시면 됩니다.
                            </div>
                        </li>
                        <li class="">
                            <div class="board__head">Q. 본 서비스에서 활동하는 변호사는 믿을 수 있나요?</div>
                            <div class="board__body">
                                창업을 시작하는 사람들을 위해 법률 바우처를 제공하는 서비스입니다. 법무법인 세종이 만든 국내 유일 법률자문 지원 서비스입니다.<br/>
                                법무부 자문료 신청 메뉴에 접속하여 절차에 따라 신청하시면 됩니다.
                            </div>
                        </li>
                        <li class="">
                            <div class="board__head">Q. 스마트폰으로도 서비스를 이용할 수 있나요?</div>
                            <div class="board__body">
                                창업을 시작하는 사람들을 위해 법률 바우처를 제공하는 서비스입니다. 법무법인 세종이 만든 국내 유일 법률자문 지원 서비스입니다.<br/>
                                법무부 자문료 신청 메뉴에 접속하여 절차에 따라 신청하시면 됩니다.
                            </div>
                        </li>
                        <li class="">
                            <div class="board__head">Q. 해외에서도 이용할 수 있나요?</div>
                            <div class="board__body">
                                창업을 시작하는 사람들을 위해 법률 바우처를 제공하는 서비스입니다. 법무법인 세종이 만든 국내 유일 법률자문 지원 서비스입니다.<br/>
                                법무부 자문료 신청 메뉴에 접속하여 절차에 따라 신청하시면 됩니다.
                            </div>
                        </li>
                    </ul>
            
                    <script>
                        $(document).ready(function(){
                            $('.board__head').on('click', function(){
                                $(this).parents('li').toggleClass('is-active');
                            });
                        });
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
        $(window).scroll(function(){
            if( $(document).scrollTop() > 10 ) {
                $('.header').addClass('scrolled');
            } else {
                $('.header').removeClass('scrolled');
            }
        })
    })
</script>
<jsp:include page="common/footer.jsp" flush="false" />
</div>
</form>
</body>
</html>