<%@page import="java.util.List"%>
<%@page import="com.it.model.notice.Notice"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Notice> list = (List) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
button {
	color : red;
}
a {text-decoration: none;}
table, td {
	border-collapse: collapse;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function() {
	//alert("load성공");
	//누구를 어떻게 할지의 문법구조를 갖는다.
	//누구를 표현하기위한 선택자는 css의 선택자를 그대로 지원!
	$("button").click(function() {
		$(location).attr("href", "/notice/registForm.jsp");
	})
});
</script>
</head>
<body>
	<table width="100%" border="1px">
		<tr>
			<td width="5%">No</td>
			<td width="65%">제목</td>
			<td width="10%">작성자</td>
			<td width="10%">등록일</td>
			<td width="10%">조회수</td>
		</tr>
		<%int total = list.size(); %>
		<%for(int i=0; i< list.size(); i++) { %>
		<%Notice notice = list.get(i); %>
		<tr onmouseover="this.style.background='cyan'" onmouseout="this.style.background='white'">
			<td><%=total-- %></td>
			<td><a href="/notice/content?notice_id=<%=notice.getNotice_id()%>"><%=notice.getTitle() %></a></td>
			<td><%=notice.getWriter() %></td>
			<td><%=notice.getRegdate().substring(0,10) %></td>
			<td><%=notice.getHit() %></td>
		</tr>
		<%} %>
		<tr>
			<td colspan="5">
				<button>등록</button>
			</td>
		</tr>
	</table>
</body>
</html>