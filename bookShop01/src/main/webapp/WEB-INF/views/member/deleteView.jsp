<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	    
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">

	
		$(document).ready(function(){
			$("#deletee").click(function(){

				if($("#memberPw").val()==""){
					alert("비밀번호를 입력해주세요");
					$("#memberPw").focus();
					return false
				}
				
				if($("#memberPw2").val()==""){
					alert("비밀번호 확인을 입력해주세요");
					$("#memberPw2").focus();
					return false
				}
				
				if ($("#memberPw").val() != $("#memberPw2").val()) {
					alert("비밀번호가 일치하지 않습니다.");
					$("#memberPw").focus();
					 
					return false;
					}
				
				$.ajax({
					url : "${contextPath}/member/pwCheck.do",
					type : "POST",
					async : false,
					data : {
						member_id : $("#memberId").val(),
						member_pw : $("#memberPw").val()
					},
					dataType : "json",
					success: function(data){
						
						if(data==='0'){
							alert("비밀번호를 확인해주세요.");
							return;
						}else{
							if(confirm("탈퇴하시겠습니까?")){
								$("#deleteForm").submit();
								alert("탈퇴처리가 되었습니다. 이용해주셔서 감사합니다.")
							}
							
						}
					},error : function(data) {
						alert("에러가 발생했습니다."+data);
					}
				})
			});
		})
							
	
</script>
<title>Insert title here</title>
</head>
<body>

	<form action="${contextPath }/member/delete.do" method="post" id="deleteForm" name="deleteForm">
       	<input type="hidden" id="memberId" name="memberId" value="${login.memberId}">
	    <div class="col-sm-8 col-sm-offset-2">
	        <div class="panel panel-default panel-margin-10">
	            <div class="panel-body panel-body-content text-center">
	                <p class="lead">회원탈퇴를 하려면 비밀번호를 입력해주세요.</p>
	                <div class="form-group">
	                    <input type="password" id = "memberPw" name="memberPw" class="form-control form-control-inline text-center" placeholder="비밀번호" />
	                </div>
	                <div class="form-group">
	                    <input type="password" id="memberPw2" name="memberPw2"  class="form-control form-control-inline text-center" placeholder="비밀번호 확인" />
	                </div>
	                <button type="button" id="deletee" name="delete" class="btn btn-primary" >회원탈퇴</button> 
	                <%-- <a href="${contextPath }/mypage/myPageMain.do" class="btn btn-default">취소</a> --%>
	                <button type="button" id="cancle" onClick="location.href='${contextPath }/mypage/myPageMain.do'">취소</button>
	            </div>
	        </div>
	    </div>
    </form>
</body>
</html>