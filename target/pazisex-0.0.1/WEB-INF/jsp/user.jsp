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
<h1 class="entry-title">Ucesnik</h1>
<div id="time" class="entry-title"></div>
<form:form method="post" action="../user/saveUser" modelAttribute="user">
 
  <ul>
  <li>Ime <input type="text" name="name" value="${user.name}"/>  </li>
  <li>Prezime <input type="text" name="lastName" value="${user.lastName}"/>  </li>
  <li>Datum rodjenja <input type="date"  name="dateOfBirth" value="${user.dateOfBirth}"/>  </li>
  <li>Grad <input type="text" name="city" value="${user.city}"/>  </li>
  <li>E-mail <input type="text" name="eMail" value="${user.eMail}"/>  </li>
  <li>Facebook <input type="text" name="facebook" value="${user.facebook}"/>  </li>
  <li>Twitter <input type="text" name="twitterName" value="${user.twitterName}"/>  </li>
  <li>Instagram <input type="text" name="instagramName" value="${user.instagramName}"/>  </li>
  </ul>
<br/>
<input type="submit" value="Save" />
     
</form:form>
</div>

</body>
</html>