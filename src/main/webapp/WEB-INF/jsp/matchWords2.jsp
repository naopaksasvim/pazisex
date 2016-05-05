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
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
    <script src="http://stage-preview.gage.com/Creative/Microsoft/EZCourseDemo/scripts/jquery.jsPlumb-1.3.16-all-min.js"></script>
    <script>
        
        $(function () {

            //Make element draggable
            $(".dragItem").draggable({
                helper: 'clone',
                cursor: 'move',
                tolerance: 'fit',
                revert: true
            });
            $("#DropArea").droppable({
                accept: '.dragItem',
                activeClass: "drop-area",
                drop: function (e, ui) {

                    x = ui.helper.clone();
                    ui.helper.remove();
                    $(x).removeAttr("class");
                    
                    $(x).addClass("dropItem"); 
                    x.addClass('jsPlumbItem');
                    x.appendTo('#DropArea');
                    
                     AddLine();
                    
                }
            });
        })
        
        function AddLine()
        {
            jsPlumb.removeAllEndpoints();
            var j = 1;
            var previous; 
             
            $("#DropArea").find(".jsPlumbItem").each(function () {

                if (j > 1)
                {
                    var e0 = jsPlumb.addEndpoint(previous);
                    var e1 = jsPlumb.addEndpoint($(this)); 
                     //add line
                    jsPlumb.connect({ source: e0, target: e1 });
                }
                else
                {
                    j++;
                }
                previous = $(this);

            }); 
           
            jsPlumb.draggable($(".jsPlumbItem"));

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


<div class="content">
	<div class="header-logo"></div>
	<div class="text-wrap relative">
		<h1 class="entry-title">${game.gameName}</h1>
		<div id="time" class="absolute"></div>
	
    <div>
     <div id="container" style="width:60px; height:400px;">
         <div id="Item1" class="dragItem">A</div>
         <div id="Item2" class="dragItem">B</div>
         <div id="Item3" class="dragItem">C</div>
     </div>
        <div id="DropArea" style="width: 400px; height:400px; border:solid 1px gray; "></div>
    </div>
	</div>

</div>

<script>

line1 = $('#line1');   
div1 = $('#div1');   
div2 = $('#div2');

var pos1 = div1.position();
var pos2 = div2.position();

line1.attr('x1',pos1.left).attr('y1',pos1.top).attr('x2',pos2.left).attr('y2',pos2.top);

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


</script>
</body>
</html>