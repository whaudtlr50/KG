<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value ="${pageContext.request.contextPath}"/>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
	String user_id = (String) session.getAttribute("userId");
%>
<!DOCTYPE html>
<html>
<jsp:include page="../include/header.jsp" />
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/litera/bootstrap.min.css" integrity="sha384-enpDwFISL6M3ZGZ50Tjo8m65q06uLVnyvkFO3rsoW0UC15ATBFz3QEhr3hmxpYsn" crossorigin="anonymous">
<meta charset="UTF-8">
<title>책 등록 페이지</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>

	<br>
	<br>

	<div class = container style="margin : auto; width:700px; align : center">
		<form action ="${path}/book/bookInsertForm.do" method = "post" enctype="multipart/form-data">
			<div class="form-group">
  				<label for="picture1">책 사진 첨부</label>
   					<input type="file" class="form-control" id="picture1" name="book_file">
 	</div>
 	<div class="form-group">
            <label for="book_name">책 제목:</label>
                 <input type="text" class="form-control" id="book_name" name="book_name">
                 <div id="bookChkMsg"></div>
              </div>
	<div class="form-group">
    	<label for="writer">저자:</label>
        	<input type="text" class="form-control" id="writer1" name="book_writer">
    </div>             
	<div class="form-group">
    	<label for="price1">가격:</label>
        	<input type="text" class="form-control" id="price1" name="book_price ">
    </div>       
    <div class="form-group">
		<label for="info1">책 소개:</label><br><br>
			<textarea rows="5" cols="50" id="info1" name="book_info"></textarea>
	</div> 
	<div class="form-group">
		<label for="mokcha1">목차:</label><br><br>
			<textarea rows="5" cols="50" id="mok1" name="book_mokcha"></textarea>
	</div>  
	<div class="form-group"  style = "width : 150px">
		<label for="inventory1">재고:</label><br><br>
			<input type="text" class="form-control" id="inventory1" name="book_inventory">
	</div>  
   
	
	<input style = "margin:8px" class="btn btn-primary" type = "submit" id = "btn" value = "등록" disabled="disabled" onclick="return confirm('등록하시겠습니까?')">
	<input style = "margin:8px" class="btn btn-outline-secondary" type = "reset" value = "취소">
	</form>
</div>
<script type="text/javascript">
	$('#book_name').blur(function(){
		var book_name = $("#book_name").val();
		$.ajax({
			type: 'GET',
			url : '${pageContext.request.contextPath}/book/bookChk.do?book_name='+ book_name,
			success: function(data) {
				console.log("1 = 중복, 0 = 중복x"+data);
				if(data == 1){
					// 1 :책 이름이 중복 되는 문구
					$("#book_name").css('border','3px solid red');
					$('#bookChkMsg').text('이미 사용중인 책명입니다.');
					$('#bookChkMsg').css('color','red');
					$('#btn').attr('disabled', true)
				}else{
						$("#book_name").css('border','3px solid green');
						$('#bookChkMsg').text('');
						$('#bookChkMsg').css('color','green');
						$('#btn').attr('disabled', false)
				}
			} 
		})
	})
</script>
</body>
</html>