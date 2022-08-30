<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="#">
		<table>
			<tr>
				 <td>번호</td>
				 <td>제목</td>
				 <td>내용</td>
				 <td>작성자</td>
				 <td>등록일자</td>
				 <!-- <td>수정일자</td> -->
			</tr>
			<c:forEach var="boardList" items="${boardList}" varStatus="status">
			<tr>
				 <td><c:out value="${status.count }"></c:out></td>
				 <%-- <td>${boardList.bno }</td> --%>
				 <td><a href="${contextPath}/admin/board/textview.do?bno=${boardList.bno }">${boardList.title }</a></td>
				 <td>${boardList.content }</td>
				 <td>${boardList.writer }</td>
				 <td>${boardList.regdate }</td>
				 <%-- <td>${boardList.updateDate }</td> --%>
				 
			</tr>
			</c:forEach>
			
			<tr>
				<td>
				<button type="button">글쓰기</button>
				<tr>
			</tr>
		</table>
	</form>
</body>
</html>