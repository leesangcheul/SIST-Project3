<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title></title>

    <!-- 부트스트랩 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
  <link href="http://localhost/sistProject3/common/css/main.css" rel="stylesheet" />

 <style type = "text/css">
  html,
body {
   margin:0;
   padding:0;
   height:100%;
} 
#wrap {
        display: flex;
        width: 100%;
        height: 100%;
        flex-direction: column;
        justify-content: space-between;
      }
 .container {
   min-height:100%;
   position:relative;
   text-align : center;
   
  /*padding-bottom:100px;/* footer height */
}

#signUpTitle{
	font-size: 30px;
	font-weight: bold;
	
}

td {
	padding-top : 30px;
	font-size : 17px;
}
 </style>
<script type="text/javascript">
$(function(){
	
	$("#joinBtn").click(function(){
		chkNull();
	});
	
	
	$("#chkId").click(function () {
		//window.open("id_dup.do?cmd=D001", "popup", "width=500, height=302, top="
		window.open("http://localhost/sistProject3/login/id_dup.jsp", "popup", "width=500, height=302, top="
			+ (window.screenTop + 300) + ",left=" + (window.screenLeft + 700))
			
			
	})
});//Ready

function chkPass(){
		if( $("#passChk").val() != $("#pass").val() ){
			//alert("비밀번호 일치하지 않습니다. 다시 입력해 주세요.");
			$("#test").css("color", "#FF0000");
			$("#test").text("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
			$("#pass").val("");
			$("#passChk").val("");
			$("#pass").focus();
			return;
		}else{
			
			if( $("#passChk").val() == "" && $("#pass").val() == ""){
				$("#test").text("비밀번호가 비어있습니다. 확인해주세요");
				$("#test").css("color", "#FF0000");
				$("#pass").focus();
				
			}else{
				$("#test").css("color", "#329932");
				$("#test").text("비밀번호가 일치합니다. 계속 진행해 주세요.");
			}
			
		}
	
}

function chkNull(){
	if(  $("#id").val() == "" ){
		alert("아이디를 입력해주세요");
		$("#id").focus();
		return;
	}
	if(  $("#pass").val() == "" ){
		alert("비밀번호를 입력해주세요");
		$("#pass").focus();
		return;
	}
	if(  $("#passChk").val() == "" ){
		alert("비밀번호 확인을 해주세요");
		$("#passChk").focus();
		return;
	}
	if(  $("#name").val() == "" ){
		alert("이름을 입력해주세요");
		$("#name").focus();
		return;
	}
	if(  $("#phone").val() == "" ){
		alert("연락처를 입력해주세요");
		$("#phone").focus();
		return;
	}
	if(  $("#phone").val().indexOf("-") != -1){
		alert("연락처는 '-'를 빼고 입력해주세요");
		$("#phone").focus();
		$("#phone").val("");
		return;
		
	}
	if(  $("#phone").val().length > 13 ){
		alert("연락처를 다시 입력해주세요");
		$("#phone").val("");
		$("#phone").focus();
		return;
	}
	
	
	if(  $("#emailId").val() == "" ){
		alert("이메일을 입력해주세요");
		$("#emailId").focus();
		return;
	}
	if(  $("#addr1").val() == "" ){
		alert("우편번호를 입력해주세요");
		$("#addr1").focus();
		return;
	}
	if(  $("#addr2").val() == "" ){
		alert("주소를 입력해주세요");
		$("#addr2").focus();
		return;
	}
	if(  $("#addr3").val() == "" ){
		alert("상세주소를 입력해주세요");
		$("#addr3").focus();
		return;
	}
	if(  $("#loc").val() == "" ){
		alert("지역을 입력해주세요");
		$("#loc").focus();
		return;
	}
	
	
	alert("회원가입성공");
}
</script>
</head>
<body>
<div id = "wrap">
<%@include file ="../header.jsp" %>
	<div class ="container" style = "margin : 30px auto; background-color : #f8f9fa ">
		<div id = "signUpTitle">
			회원가입
		</div>
	<form action="#" method ="post" name = "frm">

		<table style = " text-align : left; margin : 30px auto">
			<tr>
				<td style = " width : 120px;">아이디</td>
				<td ><input type = "text" name = "id" id = "id" class ="inputBox" placeholder="ID중복검사를 눌러주세요" readonly="readonly"/> &nbsp; &nbsp;&nbsp; &nbsp; <input type="button" id="chkId" value = "ID중복검사" class="btn btn-primary"style ="height : 32px"/></td>
			</tr> 
			<tr>
				<td>비밀번호</td>
				<td><input type = "password" name = "pass" id = "pass" class ="inputBox"/></td>
			</tr> 
			<tr>
				<td style = "height : 30px">비밀번호확인</td>
				<td style = "oadding-top : 40px">
				<input type = "password" name = "passChk" id = "passChk" class ="inputBox" onblur="chkPass()"/>
				<div style = "height : 10px; font-size: 15px"><label id = "test"></label></div>
				</td>
			</tr> 
			<tr>
				<td>이름</td>
				<td><input type = "text" name = "name" id = "name" class ="inputBox"/></td>
			</tr> 
			<tr>
				<td>연락처</td>
				<td><input type = "text" name = "phone" id = "phone" placeholder="-를 빼고 작성해주세요." class ="inputBox"/></td>
			</tr> 
			<tr>
				<td>이메일</td>
				<td><input type = "text" name = "emailId" id = "emailId" class ="inputBox" style = "width : 120px;" /> @ 
				<select name = "email" id = "domain" class ="inputBox" style = "width : 120px;">
					<option value = "naver.com">naver.com</option>
					<option value = "daum.net">daum.net</option>
					<option value = "google.com">google.com</option>
					<option value = "hanmail.com">hanmail.com</option>
				</select>
				</td>
			</tr> 
			
			<tr>
				<td >우편번호</td>
				<td ><input type = "text" name = "addr1" id = "addr1" class ="inputBox" style =" width : 160px; font-size:14px" readonly="readonly" placeholder="우편번호 검색을 눌러주세요." />&nbsp; &nbsp; <input type="button" value = "우편번호 검색"  class="btn btn-primary" style ="height : 32px" onclick="sample2_execDaumPostcode()" /></td>
			</tr> 
		
			<tr>
				<td>주소</td>
				<td><input type = "text" name = "addr2" id = "addr2" class ="inputBox" style = "width : 280px"  readonly="readonly" /></td>
			</tr> 
			<tr>
				<td>상세주소</td>
				<td><input type = "text" name = "addr3" id = "addr3" class ="inputBox" style = "width : 280px"/></td>
			</tr> 
			<tr>
				<td>주 거래지역</td>
				<td>
				<select name = "loc" id = "loc" class ="inputBox" style = "width : 185px">
					<option  value="">---지역선택---</option>
					<option value = "1" >임시</option>
					<option value = "1">임시</option>
					<option value = "1">임시</option>
				</select>
				</td>
			</tr> 
		
		</table>
		</form>
		<div>
			<input type = "button" value = "뒤로가기" class= "btn btn-danger" style = "height : 40px;" onclick ="history.back()"/>&nbsp; &nbsp;<input type = "button" value = "가입하기" id ="joinBtn" class = " btn btn-primary" style = "height : 40px"/>
		</div>
	</div>
	
<%@include file ="../footer.jsp" %>
	

	</div>
	
<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>
</body>
</html>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    /* document.getElementById("sample2_extraAddress").value = extraAddr; */
                
                } 
               /*  else {
                    document.getElementById("sample2_extraAddress").value = '';
                } */

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('addr1').value = data.zonecode;
                $("#addr1").css("font-size","17px");
                document.getElementById("addr2").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr3").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 500; //우편번호서비스가 들어갈 element의 width
        var height = 600; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>