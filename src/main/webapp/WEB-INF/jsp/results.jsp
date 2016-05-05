<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<div class="header-logo"></div>
	<div class="text-wrap relative">
		<h1 class="entry-title">Result</h1>
		
	
	<form:form method="post" action="/pazisex/game/save" modelAttribute="result" class="radio-form">	  	
		  
		  	<table id="resultTable">
		  		<c:forEach items="${results}" var="result" varStatus="status">
		  			<tr>
		  			<td>
		  			${result.questionText}	 
	</td>
		   			
		   			<td>
		  			${result.answerText}	 
	
		   			</td>
		   				<td>${result.numberOfAnswers}</td>
		   				</tr>
				</c:forEach>
			</table>
			</form:form>
		     
	
	</div>
</div>
<aside class="right"></aside>
<script>
$(function () {

    var table = document.getElementById("resultTable");
    var j = 0;
    var index = [];
    for (var i = 0; i < table.rows.length - 1; i++) {

        if (table.rows[i] != null && table.rows[i + 1] != null) {

            if (table.rows[i].cells[0].textContent == table.rows[i + 1].cells[0].textContent) {
                index[index.length] = i + 1;
            }


        }

    }
    for (var child = 0; child < index.length; child++) {
        table.rows[index[child]].cells[0].textContent = "";

    }
});
</script>
</body>
</html>