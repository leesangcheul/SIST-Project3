<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>adminLocation</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

.container {
	min-height: 82%;
	position: relative;
}

.admin-wrap {
	/* border: 1px solid #333; */
	width: 100%;
	height: 795px;
	margin: 0 auto;
}

.admin-menu {
	/* border: 1px solid #333; */
	width: 100%;
	height: 100px;
	margin: 0 auto;
}

#table {
	width: 100%;
	height: 100px;
}

#table td {
	font-size: 50px;
	text-align: center;
}

.admin-main-title {
	margin-top:30px;
	width: 100%;
	height:100px;
	font-size:35px;
	font-weight: 1000;
}

#admin-location-table-div {
	width: 100%;
	height:500px;
}

#location-table{
	border: 1px solid #333;	
	width: 100%;
}
#location-table td{
	text-align: center;
	border: 1px solid #333;	
	height:100px;
}

#location-no{
	width:200px;
	background-color: #ECECED;
}
#location-main{
	width:700px;
	background-color: #ECECED;
}
#location-check{
	width:200px;
	background-color: #ECECED;
}
</style>
<script type="text/javascript">


</script>
</head>
<body>
 <%@ include file ="../header.jsp" %>
<div class="container">

	<div class="admin-wrap">
	
		<div class="admin-menu">
			<table id="table">
				<tr>
					<td>지역관리</td>
					<td>상품관리</td>
					<td>회원관리</td>
				</tr>
			</table>
		</div>
		
		<div class="admin-main-title">
		지역관리
		</div>
		
		<div class="admin-location-table-div">
			<table id="location-table">
				<tr>
					<td id="location-no">No</td>
					<td id="location-main">관리지역</td>
					<td id="location-check">On/Off</td>
				</tr>
				<tr>
					<td></td>
					<td ></td>
					<td ><input type="checkbox"/></td>
				</tr>	
			</table>
		</div>
		
	</div>

</div>
<%@ include file = "../footer.jsp" %>
</body>
</html>








