<%@page import="com.it.model.notice.Notice"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Notice notice = (Notice) request.getAttribute("notice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록 폼</title>
<style type="text/css">
body {
	margin: 0;
}
div {
	width: 500px;
	height: auto;
	border: 1px solid #666;
	margin: auto;
	background: transparent;
}

div input, textarea {
	width: 98%;
	margin: 5px 0;
}
textarea {
	height: 385px;
}
.content {
	height: 300px;
}
button {
	background: #fff;
	border: 1px solid #ccc;
}
button:hover {
	background: #3cf;
	border: 1px solid #666;
	color: #fff;
}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		//등록버튼 누르면,,
		$("#bt_list").click(function() {
			//history.back(); //이전페이지가기
			//캐시를 보여주는거라서, 누군가가 글을 썼을때 갱신된 내용을 볼 수 없다..
			
			//새롭게 서버에서 요청
			$(location).attr("href", "/notice/list");
		});
		
		$("#bt_del").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				del();				
			}
		});
		$("#bt_edit").click(function() {
			if (confirm("수정하시겠습니까?")) {
				edit();				
			}
		});
	});
	
	function edit() {
		$("form").attr("method", "post");
		$("form").attr("action", "/notice/edit");
		$("form").submit();
	}
	
	function del() {
		//alert("삭제요청 시도!");
		location.href="/notice/delete?notice_id=<%=notice.getNotice_id()%>";
	}
</script>
</head>
<body>
	<div>
		<form>
		<table width=500 border=1>		
			<tr>
				<td><input type="hidden" name="notice_id" value="<%=notice.getNotice_id() %>"></td>
			</tr>
			<tr>
				<td><input type="text" name="title" value="<%=notice.getTitle() %>"></td>
			</tr>
			<tr>
				<td><input type="text" name="writer" value="<%=notice.getWriter() %>"></td>
			</tr>
			<tr>
				<td class="content">
					<textarea rows="" cols="" name="content"><%=notice.getContent() %></textarea>
				</td>
			</tr>
		</table>
		</form>
		<button id="bt_list">리스트</button>
		<button id="bt_edit">수정</button>
		<button id="bt_del">삭제</button>
	</div>
</body>
</html>