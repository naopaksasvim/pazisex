<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>
    <title>Pazi sex</title>
</head>
<body>
<div class="sk-folding-cube">
  	<div class="sk-cube1 sk-cube"></div>
  	<div class="sk-cube2 sk-cube"></div>
  	<div class="sk-cube4 sk-cube"></div>
	<div class="sk-cube3 sk-cube"></div>
</div>
<aside class="left"></aside>
<div class="content">
	<h1 class="entry-title">Za nastavak unesite kod</h1>
	<form:form method="post" action="/pazisex/game/enterCode" modelAttribute="game">
		<ul class="input-fields">
		<li><input type="hidden" name="gameID" value="${game.gameID}"/>
			<label>Kod:</label></li>
			<li><input type="text" name="gameName"  value=""/></li>
			<li><input type="submit" value="Nastavi" /></li>
		</ul>
	</form:form>
</div>
<aside class="right"></aside>
</body>
</html>