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
<aside class="left"></aside>
<div class="content">
	<div class="header-logo"></div>
	<h1 class="entry-title">Ucesnik</h1>
	<form:form method="post" action="../user/saveUser" modelAttribute="user">
 
 	<ul class="input-fields">
	  	<li>
	  		<label>Ime</label>
	  		<input type="text" name="name" value="${user.name}"/>
  		</li>
	  	<li>
	  		<label>Prezime</label>
	  		<input type="text" name="lastName" value="${user.lastName}"/>
  		</li>
		<li><label>Datum rodjenja</label><input type="date"  name="dateOfBirth" value="${user.dateOfBirth}"/>  </li>
		<li><label>Grad</label><input type="text" name="city" value="${user.city}"/>  </li>
		<li><label>E-mail</label><input type="text" name="eMail" value="${user.eMail}"/>  </li>
		<li><label>Facebook</label><input type="text" name="facebook" value="${user.facebook}"/>  </li>
		<li><label>Twitter</label><input type="text" name="twitterName" value="${user.twitterName}"/>  </li>
		<li><label>Instagram</label><input type="text" name="instagramName" value="${user.instagramName}"/>  </li>
		<li><input type="submit" value="Sacuvaj" /></li>
  	</ul>
	
    </form:form>
</div>
<aside class="right"></aside>
</body>
</html>