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
		<h1 class="entry-title">${game.gameName}</h1>
		<c:if test="${game.gameID==5}">
				<a href="/pazisex/game/getGame/4">Nazad</a>
				<br>
				</c:if>
		<!-- <div id="time" class="absolute"></div> -->
		<form:form method="post" action="/pazisex/game/save" modelAttribute="game" class="radio-form">
		  	<input type="hidden" name="gameID" value="${game.gameID}"/>
	    	<input type="hidden" name="durationMin" id="duration" value="${game.durationMin}"/> 
		  
		  	<ul>
		  		<c:forEach items="${game.questions}" var="question" varStatus="status">
		  			<li>
		  				<span class="circle">${status.index + 1}.</span>
		  				<span class="question">${question.questionText}</span>
		  				<input type="hidden" name="questions[${status.index}].questionID" value="${question.questionID}"/>
						<ul class="clearfix">
				 			<c:forEach items="${question.answers}" var="answer" varStatus="statusAnswer">
								<li class="fleft">
									<span class="mask-radio" >
						 				<input type="radio" name="questions[${status.index}].usersAnswer" value="${answer.answerID}" onclick="enable()">
						 				
						 				<label>${answer.answerText}</label>
						 				<i class="icon"></i>
					 				</span>
								</li>
				 			</c:forEach>
						</ul>
		   			</li>
				</c:forEach>
			</ul>
				
			<input type="submit" value="Snimi" disabled="disabled"/>
			
		     
		</form:form>
	</div>
</div>
<aside class="right"></aside>
<script>
/* function startTimer(duration, display) {
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

jQuery(function ($) {
	console.log($("#duration").val());
	minutes=$("#duration").val();
    var duration = 60 * minutes,
        display = $('#time');
    startTimer(duration, display);
});*/
function enable()
{

	  var names = {};
	    $(':radio').each(function() {
	        names[$(this).attr('name')] = true;
	    });
	    var count = 0;
	    $.each(names, function() { 
	        count++;
	    });
	    if ($(':radio:checked').length === count) {
	    	 $('input[type="submit"]').prop('disabled', false);
	    }
	}
	

</script>
</body>
</html>