<%@ page contentType="text/html; charset=UTF-8"%>
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
	height: 500px;
	border: 1px solid #666;
	text-align: center;
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
		$("#bt_regist").click(function() {
			regist();
		});
	});

	function regist() {
		//웹서버의 서블릿(jsp)에게 오라클에 넣을것을 요청하자!
		$("form").attr("method", "post"); //양이많아서..
		$("form").attr("action", "/notice/regist");
		$("form").submit();
	}
</script>
</head>
<body>
	<div>
		<form>
			<input type="text" name="title" placeholder="제목입력">
			<input type="text" name="writer"	placeholder="작성자 입력">
			<textarea rows="" cols="" name="content" placeholder="내용작성"></textarea>
			<button id="bt_list">리스트</button>
			<button id="bt_regist">등록</button>
		</form>
	</div>
</body>
</html>