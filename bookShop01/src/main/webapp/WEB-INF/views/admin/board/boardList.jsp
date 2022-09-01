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
<<<<<<< HEAD
<meta charset="UTF-8">
<title>Insert title here</title>
=======
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<title>Insert title here</title>
<script>
										
	
	/* 페이징 처리 자바스크립트 */
	var actionForm = $("#actionForm");
	$(".page-link").on("click", function(e) {
		e.preventDefault(); /*a href를 막아라 */

		var targetPage = $(this).attr("href")
		console.log(targetPage)

		actionForm.find("input[name='pageNum']").val(targetPage);

		actionForm.submit();

	});

	/*게시글 확인후 리스트로 돌아갈때 해당페이지로 돌아가기 위한 자바스크립트 */
	$(".move")
			.on(
					"click",
					function(e) {
						e.preventDefault(); /*a href 막기~ test하기 위해  */

						var targetBno = $(this).attr("href")
						console.log(targetBno);

						actionForm
								.append("<input type='hidden' name='bno' value='"+targetBno+"'>");
						actionForm.attr("action", "/board/get").submit();

					});
</script>



>>>>>>> jiho
</head>
<body>
	<form action="#">
		<h1>공지사항 리스트</h1>
		<br>
<<<<<<< HEAD
		<table width="750">
			<tr>
				 <td align="center" width="30" border="1">글번호</td>
				 <td width="250">제목</td>
				 <!-- <td width="150">내용</td> -->
				 <td width="30">작성자</td>
				 <td width="40">등록일자</td>
				 
			</tr>
			<c:forEach var="boardList" items="${boardList}" varStatus="status">
			<tr>
				 <td align="center"><c:out value="${status.count }"></c:out></td>
				 <td><a href="${contextPath}/admin/board/textview.do?bno=${boardList.bno }">${boardList.title }</a></td>
				 <%-- <td>${boardList.content }</td> --%>
				 <td>${boardList.writer }</td>
				 <td>${boardList.regdate }</td>
			</tr>
			</c:forEach>
			</table>
=======
<table class="table table-striped">
    <thead>
      <tr>
        <th>글번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>등록일자</th>
      </tr>
    </thead>
    
    <tbody>

			<c:forEach var="boardList" items="${boardList}" varStatus="status">
				<tr height="10">
					<td><c:out value="${status.count }"></c:out></td>
					<td width="500"><a href="${contextPath}/admin/board/textview.do?bno=${boardList.bno }">${boardList.title }</a></td>
					<td>${boardList.writer }</td>
					<td>${boardList.regdate }</td>
				</tr>
			</c:forEach>
    </tbody>
</table>
>>>>>>> jiho
			<table>
			<tr>
				<td>
				 <button type="button" onclick="location.href='${contextPath}/admin/board/addtextform.do';">글쓰기</button> 
				<tr>
			</tr>
		</table>
	</form>
<<<<<<< HEAD
=======
	<!--페이지 처리 Start  -->
                                <%-- <h3>${pageMaker}</h3> --%>
                                <div class='pull-right'>
                                	<ul class="pagination">
                                	
                                		<c:if test="${pageMaker.prev }">
    										<li class="page-item"><a class="page-link" href="${pageMaker.startPage-1 }">previous</a></li>
                                		</c:if>
                                		
                                		<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                                			<%-- <li class="page-item ${pageMaker.cri.pageNum == num ? "active" : "" }  "> --%>
                                				<a class="page-link" href="${contextPath}/admin/board/boardList.do?pageNum=${num }&amount=${pageMaker.cri.amount }">${num }</a>
                                			<!-- </li> -->
                                		</c:forEach>
                                		
                                		<c:if test="${pageMaker.next }">
                                			<a class="page-link" href="${pageMaker.endPage+1 }">Next</a>
                                		</c:if>
                                	</ul>
                                </div>
<%--                                 
                                 <form id="actionForm" action="#" method="get">
                                	<input type="submit" name="pageNum" value="${pageMaker.cri.pageNum }">
                                	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
                                </form>  --%>
                                
                                <!-- 페이지 처리 End -->

                               
>>>>>>> jiho
</body>
</html>