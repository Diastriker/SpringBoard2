<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="icon" type="image/ico" href="/img/favicon.ico" />
<link rel="stylesheet" href="/css/common2.css" />

<style>
	td { text-align: center; }
	
	tr:first-child{
		background-color : black;
		color : white;
		font-weight : bold;
		/* SCSS 문법 (sass 문법중에 하나) */
		/* SCSS 문법 : 별도 라이브러리 필요(스프링에서 라이브러리 없이 자동적용) */
		td {
			border-color : red;
			color : white;
		}
	}
	
	td[colspan="8"] {text-align : right;}
	/*
	tr:first-child td {
		border-color : white;
	}
	*/
	
</style>

</head>
<body>
	<main>
		<h2>유저 목록</h2>
		<table>
			<tr>
				<td>User_id</td>
				<td>Passwd</td>
				<td>User_Name</td>
				<td>Email</td>
				<td>Upoint</td>
				<td>Indate</td>
				<td>삭제</td>
				<td>수정</td>
			</tr>
			
			<tr>
				<td colspan="8">
					<a href="/Users/WriteForm">새 유저 추가</a>
					<a href="/Users/WriteForm2?menu_name=${menu_name}">새 유저 추가2</a>
				</td>
			</tr>
			
			<!--             변수  =  컨트롤러에서 받은 변수 -->
			<c:forEach var="user" items="${ userList }">
			<tr>
				<td>${ user.userid }</td> 
				<td>${ user.passwd }</td> 
				<td>${ user.username }</td> 
				<td>${ user.email }</td> 
				<td>${ user.upoint }</td> 
				<td>${ user.indate }</td>  

				<td><a href="/Users/Delete?userid=${ user.userid }">삭제</a></td>
				<td><a href="/Users/UpdateForm?userid=${ user.userid }" >수정</a></td>
			</tr>
			</c:forEach>
		</table>
	</main>
	
</body>
</html>