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
	 <script src="//code.jquery.com/jquery-1.8.3.js"></script> 
    <script src="//code.jquery.com/ui/1.9.2/jquery-ui.js"></script> 
   
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
    <script src="http://stage-preview.gage.com/Creative/Microsoft/EZCourseDemo/scripts/jquery.jsPlumb-1.3.16-all-min.js"></script>
    <script>
        
        $(function () {

            //Make element draggable
            $(".js_drag").draggable({
                helper: 'clone',
                cursor: 'move',
                tolerance: 'fit',
                revert: true
            });
           
            $("#bolest1").droppable({
                accept: '#sekret,#bezSimpt,#svrab',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='sekret'){conectSekret();}
                	else if(ui.draggable[0].id=='bezSimpt'){connectBezSimptoma();}
                	else if(ui.draggable[0].id=='svrab'){connectSvrab();}
                }
            });
            $("#bolest2").droppable({
                accept: '#sekret,#bolOdnos,#bezSimpt,#svrab,#peckanje',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='sekret'){conectSekret();}
                	else if(ui.draggable[0].id=='bolOdnos'){connectBolanOdnos();}
                	else if(ui.draggable[0].id=='bezSimpt'){connectBezSimptoma();}
                	else if(ui.draggable[0].id=='svrab'){connectSvrab();}
                	else if(ui.draggable[0].id=='peckanje'){connectPeckanje();}
                }
            });
            
            $("#bolest3").droppable({
                accept: '#sekret,#bezSimpt,#peckanje',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='sekret'){conectSekret();}
                	else if(ui.draggable[0].id=='bezSimpt'){connectBezSimptoma();}
                	else if(ui.draggable[0].id=='peckanje'){connectPeckanje();}
                }
            });
            
            $("#bolest4").droppable({
                accept: '#sekret,#bolOdnos,#bezSimpt,#svrab,#peckanje',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='sekret'){conectSekret();}
                	else if(ui.draggable[0].id=='bolOdnos'){connectBolanOdnos();}
                	else if(ui.draggable[0].id=='bezSimpt'){connectBezSimptoma();}
                	else if(ui.draggable[0].id=='svrab'){connectSvrab();}
                	else if(ui.draggable[0].id=='peckanje'){connectPeckanje();}
                }
            });
            
          
            $("#bolest5").droppable({
                accept: '#sekret,#svrab,#peckanje,#iscrpljenost',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='sekret'){conectSekret();}
                	else if(ui.draggable[0].id=='svrab'){connectSvrab();}
                	else if(ui.draggable[0].id=='peckanje'){connectPeckanje();}
                	else if(ui.draggable[0].id=='iscrpljenost'){connectIscrpljenost();}
                }
            });
          
            $("#bolest6").droppable({
                accept: '#sekret,#bolOdnos,#bezSimpt,#svrab,#peckanje,#iscrpljenost',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='sekret'){conectSekret();}
                	else if(ui.draggable[0].id=='bolOdnos'){connectBolanOdnos();}
                	else if(ui.draggable[0].id=='bezSimpt'){connectBezSimptoma();}
                	else if(ui.draggable[0].id=='svrab'){connectSvrab();}
                	else if(ui.draggable[0].id=='peckanje'){connectPeckanje();}
                	else if(ui.draggable[0].id=='iscrpljenost'){connectIscrpljenost();}
                }
            });
            $("#bolest7").droppable({
                accept: '#sekret,#bolOdnos,#bezSimpt,#svrab,#peckanje',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='sekret'){conectSekret();}
                	else if(ui.draggable[0].id=='bolOdnos'){connectBolanOdnos();}
                	else if(ui.draggable[0].id=='bezSimpt'){connectBezSimptoma();}
                	else if(ui.draggable[0].id=='svrab'){connectSvrab();}
                	else if(ui.draggable[0].id=='peckanje'){connectPeckanje();}
                	
                }
            });
            
            $("#bolest8").droppable({
                accept: '#sekret,#bolOdnos,#svrab,#peckanje,#temperatura,#iscrpljenost',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='sekret'){conectSekret();}
                	else if(ui.draggable[0].id=='bolOdnos'){connectBolanOdnos();}
                	else if(ui.draggable[0].id=='svrab'){connectSvrab();}
                	else if(ui.draggable[0].id=='peckanje'){connectPeckanje();}
                	else if(ui.draggable[0].id=='temperatura'){connectTemperatura();}
                	else if(ui.draggable[0].id=='iscrpljenost'){connectIscrpljenost();}
                	
                }
            });
      
            $("#bolest9").droppable({
                accept: '#bolOdnos,#temperatura,#iscrpljenost',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='bolOdnos'){connectBolanOdnos();}
                	else if(ui.draggable[0].id=='temperatura'){connectTemperatura();}
                	else if(ui.draggable[0].id=='iscrpljenost'){connectIscrpljenost();}
                	
                }
            });
            
            $("#bolest10").droppable({
                accept: '#bezSimpt,#temperatura,#iscrpljenost',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='bezSimpt'){connectBezSimptoma();}
                	else if(ui.draggable[0].id=='temperatura'){connectTemperatura();}
                	else if(ui.draggable[0].id=='iscrpljenost'){connectIscrpljenost();}
                	
                }
            });
            $("#bolest11").droppable({
                accept: '#bezSimpt,#svrab,#temperatura,#iscrpljenost',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='bezSimpt'){connectBezSimptoma();}
                	else if(ui.draggable[0].id=='svrab'){connectSvrab();}
                	else if(ui.draggable[0].id=='temperatura'){connectTemperatura();}
                	else if(ui.draggable[0].id=='iscrpljenost'){connectIscrpljenost();}
                	
                }
            });
            
         
            
            $("#bolest13").droppable({
                accept: '#svrab,#peckanje',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='svrab'){connectSvrab();}
                	else if(ui.draggable[0].id=='peckanje'){connectPeckanje();}
        
                }
            });
            
            $("#bolest14").droppable({
                accept: '#peckanje,#iscrpljenost',
                activeClass: "drop-area",
                drop: function (e, ui) {
                	if(ui.draggable[0].id=='peckanje'){connectPeckanje();}
                	else if(ui.draggable[0].id=='iscrpljenost'){connectIscrpljenost();}
        
                }
            });
        })
        
       
function conectSekret()
        {
        jsPlumb.removeAllEndpoints();
       	var e0 = jsPlumb.addEndpoint($("#sekret"));
        var e1 = jsPlumb.addEndpoint($("#bolest1")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#sekret"));
        e1 = jsPlumb.addEndpoint($("#bolest2")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#sekret"));
        e1 = jsPlumb.addEndpoint($("#bolest3")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#sekret"));
        e1 = jsPlumb.addEndpoint($("#bolest4")); 
        jsPlumb.connect({ source: e0, target: e1 });
    
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#sekret"));
        e1 = jsPlumb.addEndpoint($("#bolest5")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        }
        
        function connectBezSimptoma()
        {
        	jsPlumb.removeAllEndpoints();
           	var e0 = jsPlumb.addEndpoint($("#bezSimpt"));
            var e1 = jsPlumb.addEndpoint($("#bolest1")); 
            jsPlumb.connect({ source: e0, target: e1 });
            
            jsPlumb.removeAllEndpoints();
            e0 = jsPlumb.addEndpoint($("#bezSimpt"));
            e1 = jsPlumb.addEndpoint($("#bolest2")); 
            jsPlumb.connect({ source: e0, target: e1 });
            
            jsPlumb.removeAllEndpoints();
            e0 = jsPlumb.addEndpoint($("#bezSimpt"));
            e1 = jsPlumb.addEndpoint($("#bolest3")); 
            jsPlumb.connect({ source: e0, target: e1 });
            
            jsPlumb.removeAllEndpoints();
            e0 = jsPlumb.addEndpoint($("#bezSimpt"));
            e1 = jsPlumb.addEndpoint($("#bolest4")); 
            jsPlumb.connect({ source: e0, target: e1 });
        
            jsPlumb.removeAllEndpoints();
            e0 = jsPlumb.addEndpoint($("#bezSimpt"));
            e1 = jsPlumb.addEndpoint($("#bolest6")); 
            jsPlumb.connect({ source: e0, target: e1 });
            
            jsPlumb.removeAllEndpoints();
            e0 = jsPlumb.addEndpoint($("#bezSimpt"));
            e1 = jsPlumb.addEndpoint($("#bolest7")); 
            jsPlumb.connect({ source: e0, target: e1 });
            
            jsPlumb.removeAllEndpoints();
            e0 = jsPlumb.addEndpoint($("#bezSimpt"));
            e1 = jsPlumb.addEndpoint($("#bolest10")); 
            jsPlumb.connect({ source: e0, target: e1 });
            
            jsPlumb.removeAllEndpoints();
            e0 = jsPlumb.addEndpoint($("#bezSimpt"));
            e1 = jsPlumb.addEndpoint($("#bolest11")); 
            jsPlumb.connect({ source: e0, target: e1 });
        	
        }
function connectSvrab(){
		jsPlumb.removeAllEndpoints();
       	var e0 = jsPlumb.addEndpoint($("#svrab"));
        var e1 = jsPlumb.addEndpoint($("#bolest1")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#svrab"));
        e1 = jsPlumb.addEndpoint($("#bolest2")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#svrab"));
        e1 = jsPlumb.addEndpoint($("#bolest4")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#svrab"));
        e1 = jsPlumb.addEndpoint($("#bolest5")); 
        jsPlumb.connect({ source: e0, target: e1 });
    
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#svrab"));
        e1 = jsPlumb.addEndpoint($("#bolest6")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#svrab"));
        e1 = jsPlumb.addEndpoint($("#bolest7")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#svrab"));
        e1 = jsPlumb.addEndpoint($("#bolest8")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#svrab"));
        e1 = jsPlumb.addEndpoint($("#bolest11")); 
        jsPlumb.connect({ source: e0, target: e1 });
        
        jsPlumb.removeAllEndpoints();
        e0 = jsPlumb.addEndpoint($("#svrab"));
        e1 = jsPlumb.addEndpoint($("#bolest13")); 
        jsPlumb.connect({ source: e0, target: e1 });}

function connectBolanOdnos() {
	
	jsPlumb.removeAllEndpoints();
   	var e0 = jsPlumb.addEndpoint($("#bolOdnos"));
    var e1 = jsPlumb.addEndpoint($("#bolest2")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#bolOdnos"));
    e1 = jsPlumb.addEndpoint($("#bolest4")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#bolOdnos"));
    e1 = jsPlumb.addEndpoint($("#bolest6")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#bolOdnos"));
    e1 = jsPlumb.addEndpoint($("#bolest7")); 
    jsPlumb.connect({ source: e0, target: e1 });

    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#bolOdnos"));
    e1 = jsPlumb.addEndpoint($("#bolest8")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#bolOdnos"));
    e1 = jsPlumb.addEndpoint($("#bolest9")); 
    jsPlumb.connect({ source: e0, target: e1 });
}


function connectPeckanje(){
	jsPlumb.removeAllEndpoints();
   	var e0 = jsPlumb.addEndpoint($("#peckanje"));
    var e1 = jsPlumb.addEndpoint($("#bolest2")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#peckanje"));
    e1 = jsPlumb.addEndpoint($("#bolest3")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#peckanje"));
    e1 = jsPlumb.addEndpoint($("#bolest4")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#peckanje"));
    e1 = jsPlumb.addEndpoint($("#bolest5")); 
    jsPlumb.connect({ source: e0, target: e1 });

    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#peckanje"));
    e1 = jsPlumb.addEndpoint($("#bolest6")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#peckanje"));
    e1 = jsPlumb.addEndpoint($("#bolest7")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#peckanje"));
    e1 = jsPlumb.addEndpoint($("#bolest8")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#peckanje"));
    e1 = jsPlumb.addEndpoint($("#bolest12")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#peckanje"));
    e1 = jsPlumb.addEndpoint($("#bolest13")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#peckanje"));
    e1 = jsPlumb.addEndpoint($("#bolest14")); 
    jsPlumb.connect({ source: e0, target: e1 });
    }
function connectIscrpljenost()
{
	jsPlumb.removeAllEndpoints();
   	var e0 = jsPlumb.addEndpoint($("#iscrpljenost"));
    var e1 = jsPlumb.addEndpoint($("#bolest5")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#iscrpljenost"));
    e1 = jsPlumb.addEndpoint($("#bolest6")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#iscrpljenost"));
    e1 = jsPlumb.addEndpoint($("#bolest8")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#iscrpljenost"));
    e1 = jsPlumb.addEndpoint($("#bolest9")); 
    jsPlumb.connect({ source: e0, target: e1 });

    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#iscrpljenost"));
    e1 = jsPlumb.addEndpoint($("#bolest10")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#iscrpljenost"));
    e1 = jsPlumb.addEndpoint($("#bolest11")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    jsPlumb.removeAllEndpoints();
    e0 = jsPlumb.addEndpoint($("#iscrpljenost"));
    e1 = jsPlumb.addEndpoint($("#bolest14")); 
    jsPlumb.connect({ source: e0, target: e1 });
    
    
	
}
function connectTemperatura ()
{
jsPlumb.removeAllEndpoints();
	var e0 = jsPlumb.addEndpoint($("#temperatura"));
var e1 = jsPlumb.addEndpoint($("#bolest8")); 
jsPlumb.connect({ source: e0, target: e1 });

jsPlumb.removeAllEndpoints();
e0 = jsPlumb.addEndpoint($("#temperatura"));
e1 = jsPlumb.addEndpoint($("#bolest9")); 
jsPlumb.connect({ source: e0, target: e1 });

jsPlumb.removeAllEndpoints();
e0 = jsPlumb.addEndpoint($("#temperatura"));
e1 = jsPlumb.addEndpoint($("#bolest10")); 
jsPlumb.connect({ source: e0, target: e1 });

jsPlumb.removeAllEndpoints();
e0 = jsPlumb.addEndpoint($("#temperatura"));
e1 = jsPlumb.addEndpoint($("#bolest11")); 
jsPlumb.connect({ source: e0, target: e1 });



}
    </script>
     <style>
            .dragItem 
            {
                width:50px;
                height:50px;
                background-color:blue;
                float:left; 
            }
            .dropItem 
            {
                width:50px;
                height:50px;
                background-color:red;
                float:left;  
                position:relative;
            }
        </style>
    <title>Pazi sex</title>
</head>
<body>

<aside class="left"></aside>


<div class="content words-holder">
	<div class="header-logo"></div>
		<h1 class="entry-title">${game.gameName}</h1>
		<div id="time" class="absolute"></div>
    <div class="clearfix">
    <ul class="words-left">
    	<li><div id="sekret" class="question-word js_drag js_simpt1">Sekret</div></li>
    	<li><div id="bolOdnos" class="question-word js_drag js_simpt2">Bol pri odnosu</div></li>
    	<li><div id="bezSimpt" class="question-word js_drag js_simpt3">Bez vidljivih simptoma</div></li>
    	<li><div id="svrab" class="question-word js_drag js_simpt4">Svarab</div></li>
    	<li><div id="peckanje" class="question-word js_drag js_simpt5">Peckanje</div></li>
    	<li><div id="temperatura" class="question-word js_drag js_simpt6">Temperatura</div></li>
    	<li><div id="iscrpljenost" class="question-word js_drag js_simpt7">Iscrpljenost</div></li>
	</ul>
     
    <ul class="words-right">
    	<li><div class="question-word" id="bolest1">Gonoreja</div></li>
    	<li><div class="question-word" id="bolest2">Trihomonijaza</div></li>
    	<li><div class="question-word " id="bolest3">Ureaplazma </div></li>
    	<li><div class="question-word" id="bolest4">Mikoplazma </div></li>
    	<li><div class="question-word" id="bolest5">Kandida </div></li>
    	<li><div class="question-word" id="bolest6">Sifilis </div></li>
    	<li><div class="question-word" id="bolest7">Hlamidija </div></li>
    	<li><div class="question-word" id="bolest8">Genitalni herpes </div></li>
    	<li><div class="question-word" id="bolest9">HPV </div></li>
    	<li><div class="question-word" id="bolest10">HIV/AIDS </div></li>
    	<li><div class="question-word" id="bolest11">Hepatitis B i C </div></li>
     	<li><div class="question-word" id="bolest13">Stidne vaši </div></li>
    	<li><div class="question-word" id="bolest14">Herpes </div></li>
     </ul>
     
      </div>

   <a href="/pazisex/game/getGame/56" style="display: block; margin: 100px auto; text-align: center;">Nastavi</a>
	
<aside class="right"></aside>
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
           $('form').submit();
        //	timer = duration;
        }
    }, 1000);
}

jQuery(function ($) {
	
	
    var duration = 60 * 5,
        display = $('#time');
    startTimer(duration, display);
});
</script>
</body>
</html>