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
	<div class="text-wrap" style="position: relative;">
		<h1 class="entry-title" style="margin-bottom: 80px;">${game.gameName}</h1>
		<!-- <div id="time" class="entry-title" style="position: absolute; top: -20px; right: 5px;"></div> -->
		<form:form method="get" action="/pazisex/game/getGame/99" >
			<input type="hidden" name="game.gameID" value="${game.gameID}"/>
			<input type="hidden" name="game.durationMin" id="duration" value="${game.durationMin}"/>
			<div class="playing-area-holder">
			<div id="end" style="display:none">Kraj</div>
			</div> 
  			<div class="clearfix" id="questions" style="line-height: 2; padding-bottom: 30px;">
  			<c:forEach items="${game.questions}" var="question" varStatus="status">
  				<input type="hidden" name="questions[${status.index}].questionID" value="${question.questionID}"/>
      			<c:forEach items="${question.answers}" var="answer" varStatus="statusAnswer">
     			<div id="question${statusAnswer.index }" style="display:none">
	     			<input type="hidden" id="answer${statusAnswer.index}.answerText" name="answer[${statusAnswer.index}].answerText" value="${answer.answerText}"/>
	     			<input type="hidden" id="answer${statusAnswer.index}.isCorrect" name="answer[${statusAnswer.index}].isCorrect" value="${answer.isCorrect}"/>
	   				<c:if test="${answer.isCorrect==true }">
	   					<div id="answer[${statusAnswer.index}]" class="${answer.isCorrect}" >
							${answer.answerText}
	   					</div>
					</c:if>
		 			<c:if test="${answer.isCorrect==true }">
	   					<div id="answer[${statusAnswer.index}]" class="${answer.isCorrect}" style="display:none">
	   						${answer.answerText}
	   					</div>
					</c:if>
  				</div>
  				</c:forEach>

  			</c:forEach>
  			</div>
			<br/>
			
<br>

		<a href="/pazisex/game/getGame/54" style="display: block; margin: 0 auto 80px auto; text-align: center;">Nastavi</a>
     
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
});
 */
$(function(){

    var score = 0,
        level = 1,
        divs = [],
        speed = 5000;
		index=0;
		
    // create divs
    $('<div>', { class: 'score' }).appendTo('.playing-area-holder');
    $('<div>', { class: 'playing-area' }).appendTo('.playing-area-holder');
    
    // create scoreboard
    $('<div><label>Score</label><p>' + score + '</p></div>').appendTo('.score');

	$.get('',runApplication)
    function runApplication(data) {
        fillOutArrayData();
        displayWord();
        startFall();
    }// end runApplication

    function fillOutArrayData(data) {
        divs = $("#questions").children("div");
    }// end fillOutArray

    function displayWord() {
    	
           
       // get rid of whitespace characters with 'trim'
      var isCorrect='input[name="answer['+index+'].isCorrect"]';
      var isCorrectValue=$(isCorrect).val();
   
       var hiddenInput='input[name="answer['+index+'].answerText"]';
        $('.playing-area').prepend($('<span>', { class: 'word'}));
        
     $(".word").on('click touchstart',function(){
    	 $score = $('.score p');
    	 if(isCorrectValue=="false")
    		 {
    		 	score-=1;
    		 	$score.eq(0).text(score);
       		 newWord();
    		 }
    	 else
    		 {
    		 score+=1;
    		 $score.eq(0).text(score);
    		 $(hiddenInput).parent().show();
    		//$('#question'+index).show();
    		 newWord();
    		 }
    	 
     })
    
    
    
       
        if(index==divs.length)
        	{
        	$('.word').stop().hide();
        	$('#end').show();
        	}
        else
        	{
        	 $('.word').text($(hiddenInput).val());
             var myWord = $('.word').text();
             index+=1;
        	}
    }// end displayWord

    function startFall() {
        $('.word').animate( { top: '95%' }, speed, newWord);
    }// end startFall

    function newWord() {
        $('.word').stop();
        $('.word').remove();
        $('#data').val('');
        displayWord();
     
        var left=Math.floor((Math.random() * ($('.playing-area').width()-$('.word').width()-100)));
        $('.word').css({
            'left': left + 'px',
           
        });
        startFall();
    }// end newWord

    function inputHandler(e) {
        var $data = $('#data'),
            $word = $('.word'),
            //$sound = $('#mySound'),
            $score = $('.score p');

        if (e.keyCode == 13) {
            if ($data.val() == $word.text()) {
               
                score += 10;
                $score.eq(1).text(score);
                if (score == 100 || speed == 200 || speed == 300 || speed == 400) {
                    speed *= 0.67;
                    $score.eq(0).text(++level);
                }
                newWord();
            }
            $data.val('');
        }
    }// end inputHandler


    $('#data').keyup(function($this) {
        inputHandler($this);
    });

    $('#stop').click(function () {
        $('.word').stop();
    });

    $('#continue').click(function () {
        newWord();
    });

});

</script>
</body>
</html>