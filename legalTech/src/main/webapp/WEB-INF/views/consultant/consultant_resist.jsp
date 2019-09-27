<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
	<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />

	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="js/dropzone.js"></script>
<link rel="stylesheet" href="css/dropzone.css" />



</head>
<body>
<!-- 
<form id="mainform" name="mainform"  method="post" enctype="multipart/form-data">
 -->
	<h1>DropzoneJS File Upload Demo</h1>
		<div id="dropzone_test" class="dropzone">
        	<div class="dz-preview dz-file-preview well" style="display:none">
 			  <div class="dz-details">
			    <div class="dz-filename"><span data-dz-name></span></div>
			    <div class="dz-size" data-dz-size></div>
			    <img data-dz-thumbnail />
			  </div>
			  <div class="dz-progress"><span class="dz-upload" data-dz-uploadprogress></span></div>
			  <div class="dz-success-mark"><span>✔</span></div>
			  <div class="dz-error-mark"><span>✘</span></div>
			  <div class="dz-error-message"><span data-dz-errormessage></span></div>

			</div>
		</div>
 
<!-- 
</form>
 -->

<script type="text/javascript">
Dropzone.autoDiscover = false;
var accept = ".csv,.jpg,.png";

var myDropzone = new Dropzone("#dropzone_test", { 
		//	url: "../uploads/logo"
		 previewTemplate: document.querySelector('.dz-preview').innerHTML,
		 thumbnailHeight: 100,
		 thumbnailWidth: 100,
		 //autoProcessQueue: false,
	  	 url: "practice_submit.do",
		 acceptedFiles: accept,
		 maxFilesize: 500,
		 maxFiles: 1,
		 addRemoveLinks: true,
		 //previewTemplate: "<div class=\"pic dz-preview dz-file-preview\">\n  <div class=\"dz-image\"><img data-dz-thumbnail /></div>\n  <div class=\"dz-details\">\n    <div class=\"dz-size\"><span data-dz-size></span></div>\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n  </div>\n  <div class=\"dz-progress\"><span class=\"dz-upload\" data-dz-uploadprogress></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n  <div class=\"dz-success-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Check</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <path d=\"M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" stroke-opacity=\"0.198794158\" stroke=\"#FFFFFF\" fill-opacity=\"0.816519475\" fill=\"#32A336\" sketch:type=\"MSShapeGroup\"></path>\n      </g>\n    </svg>\n  </div>\n  <div class=\"dz-error-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Error</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <g id=\"Check-+-Oval-2\" sketch:type=\"MSLayerGroup\" stroke=\"#FFFFFF\" stroke-opacity=\"0.198794158\" fill=\"#ff0000\" fill-opacity=\"0.816519475\">\n          <path d=\"M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" sketch:type=\"MSShapeGroup\"></path>\n        </g>\n      </g>\n    </svg>\n  </div>\n</div>",
		 //RemoveLinkTemplate: "<div class=\"remove\" data-dz-remove><i class=\"icon-cross\"></i></div>",
		 maxfilesexceeded: function(file) {
			 this.removeAllFiles();
			 this.addFile(file);
		 },
		 thumbnail: function(file, dataUrl) {
		 	if (file.previewElement) {
		    	var images = file.previewElement.querySelectorAll("[data-dz-thumbnail]");
		     	for (var i = 0; i < images.length; i++) {
		    		var thumbnailElement = images[i];
				    thumbnailElement.alt = file.name;
				    thumbnailElement.src = dataUrl;
				    file.previewElement.classList.add("dz-success-mark"); 
		     	}
		    setTimeout(function() { file.previewElement.classList.add("dz-image-preview"); }, 1);
		    }
		 },
		 init: function () {
			 this.on('error', function (file, response) {
					//alert(maxFilesize);
					console.log("response : " + response);
					//this.removeFile(file);
					if (response.indexOf('Error 404') !== -1) {
						var errorDisplay = document.querySelectorAll('[data-dz-errormessage]');
						errorDisplay[errorDisplay.length - 1].innerHTML = 'Error 404: The upload page was not found on the server';
					}
					/* if (response.indexOf('File is too big') !== -1) {
						alert('i remove current file');
						this.removefile();
					}*/  
					else if (response.indexOf("You can't upload files of this type.") !== -1) {
						alert('파일 형식이 맞지 않습니다.');
						this.removeFile(file);
						return false;
					}
					else if (response.indexOf("You can not upload any more files.") !== -1) {
						alert('1개 이상은 불가능합니다.');
						this.removeFile(file);
						return false;
					}
			});
			 
			 this.on('sending', function(data, xhr, formData) {
				 console.log("data :" + data);
				 console.log("xhr :" + xhr);
				 console.log("formData :" + formData);
	        });
			 
			 this.on('success', function(file, responseText) {
				 console.log("responseText :" + responseText);
	        });
		 }
});


/*	  
	
	
	url: "../uploads/logo",
	paramName: "file",
	autoProcessQueue: false,
	addRemoveLinks : true,
	renderMethod: "prepend",
	dictDefaultMessage: "Add Photo",
	//previewsContainer: "#file-uploader",
	clickable : "#file-uploader .addfile",
	previewTemplate: "<div class=\"pic dz-preview dz-file-preview\">\n  <div class=\"dz-image\"><img data-dz-thumbnail /></div>\n  <div class=\"dz-details\">\n    <div class=\"dz-size\"><span data-dz-size></span></div>\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n  </div>\n  <div class=\"dz-progress\"><span class=\"dz-upload\" data-dz-uploadprogress></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n  <div class=\"dz-success-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Check</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <path d=\"M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" stroke-opacity=\"0.198794158\" stroke=\"#FFFFFF\" fill-opacity=\"0.816519475\" fill=\"#32A336\" sketch:type=\"MSShapeGroup\"></path>\n      </g>\n    </svg>\n  </div>\n  <div class=\"dz-error-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Error</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <g id=\"Check-+-Oval-2\" sketch:type=\"MSLayerGroup\" stroke=\"#FFFFFF\" stroke-opacity=\"0.198794158\" fill=\"#ff0000\" fill-opacity=\"0.816519475\">\n          <path d=\"M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" sketch:type=\"MSShapeGroup\"></path>\n        </g>\n      </g>\n    </svg>\n  </div>\n</div>",
	RemoveLinkTemplate: "<div class=\"remove\" data-dz-remove><i class=\"icon-cross\"></i></div>",
	
	init: function() {
		var submitButton = document.querySelector("#submit")
		myDropzone = this; // closure
		submitButton.addEventListener("click", function() {
			myDropzone.processQueue(); // Tell Dropzone to process all queued files.
		});
	}

*/
</script>
	
<!-- 
	<script type="text/javascript">
	
	var accept = ".csv,.hwp,.png,.jpg";
	Dropzone.autoDiscover = false;

	// Dropzone class:
	var myDropzone = new Dropzone("#mydropzone", { 
		autoProcessQueue: false,
	  	url: "UploadImages",
		acceptedFiles: accept,
		maxFilesize: 5,
		uploadMultiple: false,
		createImageThumbnails: false,
		addRemoveLinks: true,
		maxFiles: 1,
		maxfilesexceeded: function(file) {
		    this.removeAllFiles();
		    this.addFile(file);
	 	},
	    init: function () {
	    this.on('error', function (file, errorMessage) {
								alert(maxFilesize);
								alert(errorMessage);
								//this.removeAllFiles();
								if (errorMessage.indexOf('Error 404') !== -1) {
									var errorDisplay = document.querySelectorAll('[data-dz-errormessage]');
									errorDisplay[errorDisplay.length - 1].innerHTML = 'Error 404: The upload page was not found on the server';
								}
								if (errorMessage.indexOf('File is too big') !== -1) {
									alert('i remove current file');
	                // i remove current file
									this.removeAllFiles();
								}
							});
	  }
	  
	  });

</script>

-->
</body>
</html>