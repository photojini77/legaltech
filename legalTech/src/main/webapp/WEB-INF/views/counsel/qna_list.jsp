<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script type="text/javascript">
	
	$('.qna__close').click(function(){
		console.log("close");
		$(".qnaWrapper").removeClass("js-active");
		$(".qnaBox").html("");
	});
	
	$('.file__link').click(function(){
    	var value = $(this).attr("data-val");
    	var nm = $(this).attr("data-name");
    	
    	var url = window.location.href;
        var idx = url.lastIndexOf("/");
        var link = document.createElement("a");
        link.download = nm;
        link.href = url.substring(0, idx)+"/files/sweetk/qna/"+value;
        link.click();
	});
	
	 $('.data__file').on('change', function() {
 		var  str_dotlocation,str_ext,str_low;
 		str_value  = this.files[0].name;
 		str_low   = str_value.toLowerCase(str_value);
 		str_dotlocation = str_low.lastIndexOf(".");
 		str_ext   = str_low.substring(str_dotlocation+1);
 		
 		if (str_ext != "png" && str_ext != "jpg" && str_ext != "gif" && str_ext != "jpeg" && str_ext != "pdf" && str_ext != "hwp" && str_ext != "doc" && str_ext != "docx"   ) {
 		     alert("파일 형식이 맞지 않습니다.\n png,jpg,gif,jpeg,pdf,hwp,doc,docx 만\n 업로드가 가능합니다!");
 		     return;
 		} else {
 			$(".data__fileTxt").html(str_value);
 			$(".btn-del").css("display", "inline-block");
 		}
 	});
	 
	 function img_del() {
 		$('#f1').val("");
 		$('.data__fileTxt').html("");
 		$(".btn-del").css("display", "none");
 	}
	 
	 
	  $('#data-upload').on('click', function() {
		  
		  var cntn = $('#ask_cntn').val();
		  
		  if(cntn ==null || cntn == "") {
			  alert("내용을 입력해주세요.");
			  return;
		  }
		
  		var formData = new FormData();
  		formData.append("fileupload", $("input[id=f1]")[0].files[0]);
  		formData.append("cntn", cntn);
  		
  		$.ajax({
              type: 'POST',
  	          enctype : 'multipart/form-data',
              url: 'qna_save.ajax',
              data: formData,
  	          dataType : 'text',
              processData: false,
              contentType: false,
              cache : false,
              success: function(result){
            	  $(".qnaWrapper").removeClass("js-active");
          		  $(".qnaBox").html("");
            	  $(".qnaWrapper").addClass("js-active");
            	  $(".qnaBox").html(result);
  		        var objDiv = document.getElementById("messages_body");
  		        objDiv.scrollTop = objDiv.scrollHeight;
              }
              ,error:function(request,status,error){
              		alert('작성을 실패했습니다. 다시 시도 해주세요. 계속 실패할 경우 사이트 관리자에 연락해주세요.');
                  console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
              }
          });
  		
  	});
</script>

<style type="text/css">
	.txtArea {width: 95%;}
	.txtArea__txt {width: 84%;}
	.txt__right {text-align: right;}
	.download-file {background:url(assets/images/file.png) no-repeat center;background-size:60% auto;
		    margin-right: 15px;width:60px;height:60px;-webkit-box-pack: center;-ms-flex-pack: center;
		    justify-content: center;-webkit-box-align: center;-ms-flex-align: center;align-items: center;}
	.data__fileBox {padding: 10px 20px;border-bottom: 1px solid #d8d8d8;}
</style>

<div class="qnaBox">
    <div class="qna__head d-flex">
        <h2>
            문의
        </h2>
        <div class="qna__close" style="cursor:pointer"></div>
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
            <div class="messages__body" id="messages_body">
                <ul>
                	<c:forEach items="${list}" var="c"> 
	                    <li class="d-flex <c:if test="${fn:length(c.company_id) gt 0}">right</c:if>">
	                		<c:if test="${fn:length(c.legal_id) gt 0}">
		                        <div class="icon">
		                            <img src="./assets/images/icon/oval.png" alt="" />
		                        </div>
		                    </c:if>
	                        <div class="txtArea">
	                            <div class="txtArea__name <c:if test="${fn:length(c.company_id) gt 0}">txt__right</c:if>">
	                            	<c:choose>
		                            	<c:when test="${fn:length(c.legal_id) gt 0}">
			                            	${c.legal_name}
		                            	</c:when>
		                            	<c:otherwise>
		                            		${c.company_name}
		                            	</c:otherwise>
	                            	</c:choose>
	                            </div>
	                            <div class="txtArea__box d-flex">
	                            	<c:choose>
		                            	<c:when test="${fn:length(c.legal_id) gt 0}">
			                            	<div class="txtArea__txt">
			                                    <p>
			                                        ${c.ask_cntn}
			                                    </p>
			                                    
<c:if test="${fn:length(c.file_nm) gt 0 }">                                    
			                                    <div class="txtArea__file">
			                                        <div class="d-flex file__link" data-val="${c.file_nm}" data-name="${c.org_file_nm}" style="cursor:pointer">
		                                                <div class="download-file"></div>
			                                            <div class="file__info">
			                                                <h4>${c.org_file_nm}</h4>
			                                            </div>
			                                        </div>
			                                    </div>
			</c:if>  			                                    
			                                    
			                                </div>
			                                <div class="txtArea__time">${c.reg_dt}</div>
		                            	</c:when>
		                            	<c:otherwise>
			                                <div class="txtArea__time txt__right">${c.reg_dt}</div>
		                            		<div class="txtArea__txt">
			                                    <p>
			                                        ${c.ask_cntn}
			                                    </p>
			<c:if test="${fn:length(c.file_nm) gt 0 }">                                    
			                                    <div class="txtArea__file">
			                                        <div class="d-flex file__link" data-val="${c.file_nm}" data-name="${c.org_file_nm}" style="cursor:pointer">
		                                                <div class="download-file"></div>
			                                            <div class="file__info">
			                                                <h4>${c.org_file_nm}</h4>
			                                            </div>
			                                        </div>
			                                    </div>
			</c:if>                                    
			                                </div>
		                            	</c:otherwise>
	                            	</c:choose>
	                            </div>
	                        </div>
	                    </li>
	                </c:forEach>
                </ul>
            </div>
            <form id="mainform2" name="mainform2" method="post" enctype="multipart/form-data">
	            <div class="messages__foot">
	                <div class="userTxt">
	                    <div class="d-flex data__fileBox">
	                        <label for="f1" class="data__upload data__upload--file d-flex">
	                            <input type="file" class="data__file blind" id="f1" />
	                        </label>
	                        <span class="data__fileTxt text-ellipsis" data-val=""></span>
	                        <span class="btn-del" title="삭제" onclick="javascript:img_del()" style="display:none"></span>
	                    </div>
	                    <textarea placeholder="코멘트를 입력해주세요." id="ask_cntn" name="ask_cntn"></textarea>
	                </div>
	                <a href="javascript:;" class="data__upload d-flex" id="data-upload">전송하기</a>
	            </div>
            </form>
        </div>
    </div>
</div>