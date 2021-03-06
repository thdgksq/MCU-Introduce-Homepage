<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>글쓰기</title>
<link rel="stylesheet" href="../css/board.css" type="text/css" />
</head>
<body>
	<!-- TITLE -->
	<jsp:include page="../top.jsp" />
	<!-- END TITLE -->
	<div class="nav-wrapper">
		<div class="nav pagewidth">
			<ul>
				<!-- MENU -->
				<li><a href="../index.jsp">Home</a></li>
				<li class="selected"><a href="list.jsp">Board</a></li>

				<!-- END MENU -->
			</ul>
		</div>
	</div>
	<div class="pagewidth">
		<div class="page-wrap">
			<div class="content">
				<!-- CONTENT -->
				<h3>게시판 글쓰기</h3>
				<form name="postFrm" method="post" action="postProc.jsp"
					enctype="multipart/form-data">
					<input type="hidden" value="<%=session.getAttribute("id")%>" name="mem_name">
					<table border="0" width="100%" align="center">
						
						<tr>
							<td width="20%">제 목</td>
							<td width="80%"><input type="text" name="title" size="50"
								maxlength="30"></td>
						</tr>
						<tr>
							<td width="20%">내 용</td>
							<td width="80%"><textarea name="content" rows="10" cols="50"></textarea></td>
						</tr>
						<tr>
							<td width="20%">비밀 번호</td>
							<td width="80%"><input type="password" name="pass" size="15"
								maxlength="15"></td>
						</tr>
						<tr>
						<tr>
							<td width="20%">파일찾기</td>
							<td width="80%"><input type="file" name="filename"
								size="50" maxlength="50"></td>
						</tr>
						<tr>

							<td>내용타입</td>
							<td>HTML<input type=radio name="contentType" value="HTTP">&nbsp;&nbsp;&nbsp;
								TEXT<input type=radio name="contentType" value="TEXT" checked>
							</td>
						</tr>
						<tr>
							<td colspan="2"><hr /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="등록"> <input
								type="reset" value="다시쓰기"> <input type="button"
								value="리스트" onClick="javascript:location.href='list.jsp'">
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="clear"></div>
		</div>
		<!--  FOOTER START -->
		<jsp:include page="../footer.jsp" />
		<!-- FOOTER END -->
	</div>
</body>
</html>
