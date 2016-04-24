<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" pageEncoding="ISO-8859-1"%>
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
<h1 class="entry-title">${game.gameName}</h1>
<div id="time" class="entry-title"></div>
<form:form method="post" action="" modelAttribute="game">
  <input type="hidden" name="game.gameID" value="${game.gameID}"/>
    <input type="hidden" name="game.durationMin" id="duration" value="${game.durationMin}"/> 
  <ul>
  <c:forEach items="${game.questions}" var="question" varStatus="status">
  <li>${question.questionText}
  <input type="hidden" name="questions[${status.index}].questionID" value="${question.questionID}"/>
  <ul>
   <c:forEach items="${question.answers}" var="answer" varStatus="statusAnswer">
  <li>
   <input type="radio" name="questions[${status.index}].usersAnswer" value="${answer.answerID}"> ${answer.answerText}<br>
 </li>
  
  </c:forEach>
   </ul></li>
  </c:forEach>
  </ul>
<br/>
<input type="submit" value="Save" />
     
</form:form>
</div>
<script>
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.text(minutes + ":" + seconds);

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}

jQuery(function ($) {
	console.log($("#duration").val());
	minutes=$("#duration").val();
    var duration = 60 * minutes,
        display = $('#time');
    startTimer(duration, display);
});
</script>
</body>
</html>