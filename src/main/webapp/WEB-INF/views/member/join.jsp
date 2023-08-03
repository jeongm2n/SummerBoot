<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">

<%@ include file="../common/header.jsp" %>
<link rel="stylesheet" href="${path}/resources/assets/css/use_lee.css">

<title>회원가입</title>

<script>
	/* function fn_overlapped(){
	    var id=$("#id").val();
	    if(id==''){
	   	 alert("ID를 입력하세요");
	   	 return;
	    }
	    alert("id > " + id)
	    
	    $.ajax({
	       type:"post",
	       async:false,  
	       url:"${contextPath}/member/overlapped.do",
	       dataType:"text",
	       data: {id:id},
	       success:function (data,textStatus){
	          if(data=='false'){
	       	    alert("사용할 수 있는 ID입니다.");
	       	    $('#checkID').prop("disabled", true);
	          }else{
	        	  alert("사용할 수 없는 ID입니다.");
	          }
	       },
	       error:function(data,textStatus){
	          alert("에러가 발생했습니다.");ㅣ
	       },
	       complete:function(data,textStatus){
	          //alert("작업을완료 했습니다");
	       }
	    });  //end ajax
	 }	 */
	
	$(document).on('click', '#join' , function() {
		alert("회원가입!!!!!!!");
		if($("#id").val().length == 0){
	   		alert("아이디를 입력하세요.");
	   		return;
	   	} else if($("#pwd").val().length == 0) {
	   		alert("비밀번호를 입력하세요.");
	   		return;
	   	} else if($("#check_pwd").val().length == 0){
	   		alert("비밀번호 확인.");
	   		return;
	   	} else if($("#name").val().length == 0) {
	   		alert("이름을 입력하세요.");
	   		return;
	   	} else if($("#tel1").val().length != 3 || $("#tel2").val().length != 4 || $("#tel3").val().length != 4){
	   		alert("올바른 휴대폰 번호를 입력하세요.");
	   		return;
	   	} else {
			document.getElementById("joinForm").submit();
	   	}
	});
	 
	 function checkPswd2() {
	    if ($("#pwd") != $("#check_pwd")) {
	        showErrorMsg(oMsg,"비밀번호가 일치하지 않습니다.");
	        setFocusToInputObject(oInput);
	    }
	 }
	 
	 $(document).on('input', ''#check_pwd', function() {
		 	var pwd = $("#pwd").val();
		    var ch_pwd = $(this).val();
		    if(ch_pwd == pwd) {
		    	$(".pw_check_notice").hide();
				return true;
		    } else {
		    	$(".pw_check_notice").show();
				return false;
		    }
		});
</script>

</head>
<body> 
	<div class="container py-5" id="wrap">
       	<div class="col-lg-6 m-auto ">
	       	<h2 class="h2 text-center border-bottom pb-3" style="padding-top: 5.5rem!important;">회원가입</h2>
       	</div>
        <div class="row py-5">
            <form class="col-md-6 m-auto" method="post" role="form" id="joinForm" action="addMem">
            	<div class="input-group mb-3">
	                <label for="inputsubject" class="title">아이디</label>
                    <input type="text" class="form-control mt-1" id="id" name="id" placeholder="ID" value="dool">
                    <div class="input-group-text btn-washboot mt-1" id="checkID" onclick="fn_overlapped();">중복확인</div>
                </div>
                <div class="row">
                    <div class="input-group mb-3">
                        <label for="inputname" class="title">비밀번호</label>
                        <input type="password" class="form-control mt-1" id="pwd" name="pwd" placeholder="PASSWORD" value="1111">
                    </div>
                    <div class="input-group mb-3">
                        <label for="inputemail" class="title">비밀번호 확인</label>
                        <input type="password" class="form-control mt-1" id="check_pwd" name="check_pwd" placeholder="PASSWORD">
                    </div>
                    <div class="mb-3">
                    	<span class="pw_check_notice" style="color: red;">비밀번호 불일치</span>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <label for="inputsubject" class="title">이름</label>
                    <input type="text" class="form-control mt-1" id="name" name="name" placeholder="NAME" value="둘리">
                </div>
                <div class="input-group mb-3">
                    <label for="inputsubject" class="title">휴대폰</label><br>
                    <input type="text" class="form-control mt-1 tel col-md-1" id="tel1" name="tel1" placeholder="PHONE" value="010">
                    <span style="padding:2%">-</span>
                    <input type="text" class="form-control mt-1 tel2 col-md-2" id="tel2" name="tel2" placeholder="PHONE" value="1111">
                    <span style="padding:2%">-</span>
                    <input type="text" class="form-control mt-1 tel2 col-md-2" id="tel3" name="tel3" placeholder="PHONE" value="1111">
                </div>
                <div class="row">
                    <div class="col text-center mt-2">
                        <button type="button" class="btn btn-washboot btn-lg px-3" id="join">회원가입</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    
    <%@ include file="../common/footer.jsp" %>
</body>
</html>

<style>
.title {
	width: 30%;
    padding-top: 2%;
}
</style>