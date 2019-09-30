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
<title>법률 자문단 소개</title>
    <link rel="stylesheet" href="assets/plugins/slick/slick.css"/>
    <link rel="stylesheet" href="assets/plugins/jquery-ui/jquery-ui.min.css"/>
    <link rel="stylesheet" href="assets/css/main.css" />
    <script src="assets/plugins/jquery.js"></script>
    <script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="assets/plugins/slick/slick.js"></script>
    <script src="assets/js/build.js"></script>
    <script src="assets/js/jquery-1.11.2.min.js"></script>
    
    <style>
    	.visual {background:url(assets/images/lawyer.jpg) no-repeat 56% 42%;background-size: cover;}
    
	    .lawyer__item {width: 31%;height: 300px;border: 2px solid #d8d8d8;display: table-cell;margin-bottom: 20px;margin-right: 2%;}
	    .lawyer__main {width: 100%;height:205px;position:relative;border-bottom: 2px solid #d8d8d8;cursor:pointer}
	    .lawyer__img {width: 100%;height:205px;position:absolute;}
	    .lawyer__inner__img {position:absolute;width:100%;height:190px;background: url(files/legal/lawyer_a.png) no-repeat 50% 50%;background-size: contain;margin-top: 10px;}
	    .lawyer__img:hover {background:url(assets/images/plus2.png) #333 no-repeat 50% 50%;background-size: 50px;z-index:999;opacity:0.7}
	    .lawyer__inner__img:hover {z-index:-1}
	    .lawyer__txt {text-align:center;padding: 15px 10px 5px;}
	    .lawyer__txt span{font-weight:600;line-height: 2.0em;}
	    .lawyer__txt p{color:#717171;font-size: 14px;}
    </style>
</head>
<body>
<div class="wrapper">

<form id="mainform" name="mainform" method="post" action="">
	<jsp:include page="../common/topMenu.jsp" flush="false" />
	<div class="container">
	    <div class="sub">
	        <div class="con1">
	            <div class="visual">
	                <div class="visual__txt">
	                    <div class="wrap d-flex d-column">
	                        <h2>법률 자문단 소개</h2>
	                        <p>법률자문 지원 서비스</p>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="content con2 con--pb">
	            <div class="conTit">
	                <div class="wrap">
	                    <h3>법무법인 리스트</h3>
	                    <p>법무법인 소속 변호인 소개입니다.</p>
	                </div>
	            </div>
	            <div class="data">
	                <div class="wrap d-flex">
	                    <div class="lawyer__item d-flex">
	                    	<div class="lawyer__main">
		                    	<div class="lawyer__img"></div>
		                    	<div class="lawyer__inner__img" style="background-image:url(files/legal/lawyer_a.png)"></div>
	                    	</div>
	                        <div class="lawyer__txt">
	                        	<span>홍길동 변호사</span>
	                        	<p>이혼/상속/노동법/부동산</p>
	                        </div>
	                    </div>
	                    <div class="lawyer__item d-flex">
	                        <div class="lawyer__main">
	                        	<div class="lawyer__img"></div>
	                        	<div class="lawyer__inner__img" style="background-image:url(files/legal/lawyer_b.png)"></div>
	                        </div>
	                        <div class="lawyer__txt">
	                        	<span>김법률 변호사</span>
	                        	<p>노무/노동법/상속</p>
	                        </div>
	                    </div>
	                    <div class="lawyer__item d-flex">
	                        <div class="lawyer__main">
	                        	<div class="lawyer__img"></div>
	                        	<div class="lawyer__inner__img" style="background-image:url(files/legal/lawyer_c.png)"></div>
	                        </div>
	                        <div class="lawyer__txt">
	                        	<span>최상속 변호사</span>
	                        	<p>지적재산권 소송, 상표/디자인 및 부정경쟁</p>
	                        </div>
	                    </div>
	                    <div class="lawyer__item d-flex">
	                        <div class="lawyer__main">
	                        	<div class="lawyer__img"></div>
	                        	<div class="lawyer__inner__img" style="background-image:url(files/legal/lawyer_d.png)"></div>
	                        </div>
	                        <div class="lawyer__txt">
	                        	<span>이정직 변호사</span>
	                        	<p>	불공정거래행위, 기업인수합병, 자본시장 및 기업금융</p>
	                        </div>
	                    </div>
	                    <div class="lawyer__item d-flex">
	                        <div class="lawyer__main">
	                        	<div class="lawyer__img"></div>
	                        	<div class="lawyer__inner__img" style="background-image:url(files/legal/lawyer_e.png)"></div>
	                        </div>
	                        <div class="lawyer__txt">
	                        	<span>박변호 변호사</span>
	                        	<p>기업인수합병, 사모투자, 상사 및 경영권 분쟁</p>
	                        </div>
	                    </div>
	                    <div class="lawyer__item d-flex">
	                        <div class="lawyer__main">
		                        <div class="lawyer__img"></div>
	                        	<div class="lawyer__inner__img" style="background-image:url(files/legal/lawyer_f.png)"></div>
	                        </div>
	                        <div class="lawyer__txt">
	                        	<span>강검사 변호사</span>
	                        	<p>지적재산권 소송, 라이센싱/지적재산권 거래</p>
	                        </div>
	                    </div>
	                    <div class="lawyer__item d-flex">
	                        <div class="lawyer__main">
		                        <div class="lawyer__img"></div>
	                        	<div class="lawyer__inner__img" style="background-image:url(files/legal/lawyer_g.png)"></div>
	                        </div>
	                        <div class="lawyer__txt">
	                        	<span>신판사 변호사</span>
	                        	<p>법제 컨설팅, 에너지 및 자원개발, 환경</p>
	                        </div>
	                    </div>
	                    <div class="lawyer__item d-flex">
	                        <div class="lawyer__main">
		                        <div class="lawyer__img"></div>
	                        	<div class="lawyer__inner__img" style="background-image:url(files/legal/lawyer_h.png)"></div>
	                        </div>
	                        <div class="lawyer__txt">
	                        	<span>이능률 변호사</span>
	                        	<p>건설, 부동산, 부동산금융/부동산간접투자</p>
	                        </div>
	                    </div>
	                    
	                </div>
	            </div>
	            <div class="btnBox d-flex">
	                <a href="javascript:;" class="btn d-flex" id="go_next">다음으로</a>
	            </div>
	        </div>
	    </div>
	</div>

	<div class="popupBox">
	    <div class="popup__bg"></div>
	    <div class="popup">
	        <div class="wrap">
	            <div class="popupTit d-flex">
	            	변호사 정보
	            	<div class="closeBtn"></div>
	            	<div class="closeBtn2"></div>
	            </div>
	            <div class="formBox">
	               
	            </div>
	            <div class="btnBox d-flex">
	                <a href="javascript:;" class="btn d-flex" id="regi-submit">닫기</a>
	            </div>
	        </div>
	    </div>
	</div>

	<jsp:include page="../common/footer.jsp" flush="false" />
</form>
</div>

 	<script type="text/javascript">
        $(document).ready(function(){
        	$('.popupBox').hide();
        	
            $('.lawyer__main').click(function(){
                $('.popupBox').show();
            });
            
            $('.closeBtn').click(function(){
                $('.popupBox').hide();
            });
            $('.btnBox').click(function(){
                $('.popupBox').hide();
            });
        });
        
      </script>
</body>
</html>
