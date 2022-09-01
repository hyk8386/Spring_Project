<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	 isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test='${not empty message }'>
<script>
window.onload=function()
{
  result();
}

function result(){
	alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
}
</script>
</c:if>
</head>
<%-- <body>
	<H3>회원 로그인 창</H3>
	<DIV id="detail_table">
	<form action="${contextPath}/member/login.do" method="post">
	
		<TABLE>
			<TBODY>
				<TR class="dot_line">
					<TD class="fixed_join">아이디</TD>
					<TD><input name="member_id" type="text" size="20" /></TD>
				</TR>
				<TR class="solid_line">
					<TD class="fixed_join">비밀번호</TD>
					<TD><input name="member_pw" type="password" size="20" /></TD>
				</TR>
			</TBODY>
		</TABLE>
		<br><br>
		<INPUT	type="submit" value="로그인"> 
		<INPUT type="button" value="초기화">
		
		<Br><br>
		   <a href="#">아이디 찾기</a>  | 
		   <a href="#">비밀번호 찾기</a> | 
		   <a href="${contextPath}/member/addMember.do">회원가입</a>    | 
		   <a href="#">고객 센터</a>
					   
	</form>		
</body>
</html> --%>


   <style>

        .center{
            display: table;
            margin-left: auto;
            margin-right: auto;
}
        *{
            margin:0;
            padding:0;
        }
        ul{
            list-style-type: none;
        }
        body{
            font-family: "맑은 고딕","돋움";
            font-size:12px;
            color:#444444;
        }
        #login_box{
            width:220px;
            height:120px;
            border:solid 1px #bbbbbb;
            border-radius: 15px;
            margin:10px 0 0 10px;
            padding:10px 0 0 15px;
        }
        h2{
            font-family:"Arial";
            margin-bottom:10px;
        }
        #login_box input{
            width:100px;
            height:18px;          
        }
        #id_pass,#login_btn{
            display:inline-block;
            vertical-align:top;
        }
        #id_pass span{
            display: inline-block;
            width:20px;
        }
        #pass{
            margin-top:3px;
        }
        #login_btn button{
            margin-left:5px;
            padding:12px;
            border-radius: 5px;
        }
        #btns{
            margin:12px 0 0 0;
            text-decoration: underline;
        }
        #btns li{
            margin-left: 10px;
            display:inline;
        }

    </style>
</head>
<body>
    <form action="${contextPath}/member/login.do" method="post">
        <div id="login_box">
            <h2>Member-Login</h2>
            <ul id="input_button">
                <li id="id_pass">
                    <ul>
                        <li>
                            <span>ID</span>
                            <input name="member_id" type="text">                            
                        </li>
                        <li id="pass">
                            <span>PW</span>
                            <input name="member_pw" type="password">
                        </li>
                    </ul>
                </li>
           
                <li id="login_btn">
                <button>로그인</button>
                </li>
            </ul>
            <br>
            <a href="${contextPath}/member/memberForm.do">회원가입</a>
            <a href="#">비밀번호 찾기</a>
<!--              <ul id="btns">
                <li>회원가입</li>
                 <li>아이디/비밀번호 찾기</li>
            </ul> -->
        </div>
    </form>
</body>
</html>