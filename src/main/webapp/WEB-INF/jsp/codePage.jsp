<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <title>Pazi sex</title>
</head>
<body>
 

<div id="content">
<h1 class="entry-title">Za nastavak unesite kod</h1>
<div id="time" class="entry-title"></div>
<form:form method="post" action="/pazisex/game/enterCode" modelAttribute="game">
  <input type="hidden" name="gameID" value="${game.gameID}"/>
    <input type="text" name="gameName"  value=""/> 
 
<br/>
<input type="submit" value="Save" />
     
</form:form>
</div>

</body>
</html>