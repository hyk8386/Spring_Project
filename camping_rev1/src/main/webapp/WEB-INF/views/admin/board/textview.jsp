<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="#">
		<table border="1">
			<tr border="1">
				 <td>번호</td>
				 <td>제목</td>
				 <td>작성자</td>
				 <td>등록일자</td>
				 <!-- <td>수정일자</td> -->
			</tr>
			
			<c:forEach var="textview" items="${textview}" varStatus="item_num">
			<tr border="1">
				
				 <td>${textview.bno }</td>
				 <td>${textview.title }</td>
				 <td>${textview.writer }</td>
				 <td>${textview.regdate }</td>
			</tr>
			<tr border="1">
				<td colspan="4"><a href="${contextPath}/admin/board/textview.do">${textview.content }</a></td>
			</tr>
			</c:forEach>
				<tr>
				<td>
				<button type="button" onclick="location.href='${contextPath}/admin/board/modifytextview.do';">수정하기</button>
				</td>
				
				<td>
				<button type="button" onclick="location.href='${contextPath}/admin/board/deletetextview.do';">삭제하기</button>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>