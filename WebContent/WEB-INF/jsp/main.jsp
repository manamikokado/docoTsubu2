<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User, model.Tweet, java.util.List" %>
<%
// セッションスコープに保存されたユーザ情報を取得
User loginUser = (User) session.getAttribute("loginUser");
// アプリケーションスコープに保存されたつぶやきリストを取得
List<Tweet> tweetList = (List<Tweet>) application.getAttribute("tweetList");
// リクエストスコープ に保存されたエラーメッセージを取得
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶメイン</h1>
<p>
<%= loginUser.getName() %>さん、ログイン中　
<a href="/docoTsubu/Logout">ログアウト</a>
</p>
<p><a href="/docoTsubu/Main">更新</a></p>
<form action="/docoTsubu/Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<% if(errorMsg != null) { %>
<p style="color: white; background-color: tomato; padding: 5px"><%= errorMsg %></p>
<% } %>
<% for(Tweet tweet : tweetList) { %>
	<p><%= tweet.getName() %>：<%= tweet.getText() %></p>
<% } %>
</body>
</html>