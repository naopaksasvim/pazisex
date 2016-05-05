<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
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
	<div class="text-wrap text-center bubble-holder">
	<h1 class="entry-title">Označi koje su to “prirodne metode”</h1>
	<div id="time"></div>
		<form:form method="post" action="/pazisex/game/save" modelAttribute="game" class="radio-form">
			<input type="hidden" name="gameID" value="${game.gameID}"/>
		   	<input type="hidden" name="durationMin" id="duration" value="${game.durationMin}"/> 
				<ul>
					<c:forEach items="${game.questions}" var="question" varStatus="status">
					<li>
						
						<input type="hidden" name="questions[${status.index}].questionID" value="${question.questionID}"/>
						
						<ul class="clearfix ">
							<c:forEach items="${question.answers}" var="answer" varStatus="statusAnswer">
								<li class="fleft half-width">
									<span class="mask-radio">
							 			<input type="checkbox" name="questions[${status.index}].usersAnswer" onclick="markincorrect(this,${answer.isCorrect})" value="${answer.answerID}">
							 			<label>${answer.answerText}</label>
										<i class="icon"></i>
							 		</span>
								</li>
							</c:forEach>
						</ul>
					</li>
					</c:forEach>
				</ul>
		<br/><br/>
		<input type="submit" value="Save" />
		</form:form>
	</div>
</div>
<aside class="right"></aside>
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
        	 $('form').submit();
        }
    }, 1000);
}
function markincorrect(e,value)
{
	if(value==false)
		{
		$(e).parent().find('i').addClass( "wrong" );
		}
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