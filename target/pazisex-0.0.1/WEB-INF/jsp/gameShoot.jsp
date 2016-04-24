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
<h1 class="entry-title">${game.gameName}</h1>
<div id="time" class="entry-title"></div>
<form:form method="post" action="" modelAttribute="game">
  <input type="hidden" name="game.gameID" value="${game.gameID}"/>
    <input type="hidden" name="game.durationMin" id="duration" value="${game.durationMin}"/> 
  <div id="questions">
  <c:forEach items="${game.questions}" var="question" varStatus="status">
  
  <input type="hidden" name="questions[${status.index}].questionID" value="${question.questionID}"/>
      <c:forEach items="${question.answers}" var="answer" varStatus="statusAnswer">
     <div id="question[${statusAnswer.index }]">
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

$(function(){

    var score = 0,
        level = 1,
        divs = [],
        speed = 5000;
		index=0;
		
    // create divs
    $('<div>', { class: 'playing-area' }).appendTo('body');
    $('<div>', { class: 'score' }).appendTo('body');
  //  $('<div>', { class: 'input' }).appendTo('body');

    // create scoreboard
    $('<section><section>Score<p>' + score + '</p></section></section>').appendTo('.score');

    // create input field and buttons for game
    //$('<input>', { type: 'text', id: 'data' }).appendTo('.input').focus();
    //$('<input>', { type: 'button', id: 'stop', value: 'Stop' }).appendTo('.input');
    //$('<input>', { type: 'button', id: 'continue', value: 'Continue' }).appendTo('.input');

    //create audio element
  
   //$.get('../files/words.txt', runApplication);
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
    		 newWord();
    		 }
    	 
     })
    
    
    
        $('.word').text($(hiddenInput).val());
        var myWord = $('.word').text();
        index+=1;
        if(index==divs.length)
        	{
        	$('.word').stop();
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
        $('.word').css({
            'left': (Math.random() * $('#content').width()) + 'px',
           
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
                $('#mySound')[0].play();
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