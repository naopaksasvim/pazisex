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
<aside class="left"></aside>

<div class="content">
	<div class="header-logo"></div>
		<div class="text-wrap text-center bubble-holder">
			<h1 class="entry-title" style="margin-bottom:200px">Marija i Stevan sve intenzivnije razmišljaju o tome da imaju seks po prvi put… i pitaju se:</h1>
			<div id="container">
				<img 
					class="img-responsive" 
					src="/pazisex/resources/css/images/marija_stefan.png"
					alt="marija i stefan"
					style="margin: 80px auto;" />
					
				<div id='div1' style="display:none;" class="right"> 
				  	<span>Znam da smo spremni i da želim seks, ali nisam spreman da budem otac.</span>
				</div>
				
				<div id='div2' style="display:none;" class="left"> 
					<span> Slažem se, ali za sprečavanje trudnoće postoje razne prirodne metode, mene više brinu bolesti …  </span>
				</div>
				
				
			</div>
	</div>
</div>
<aside class="right"></aside>
<script>
$(function() {
	var counter = 0;
    
	 // var timer = setInterval( showDiv, 3000);

	  var time=0;
showDiv();
	  function showDiv() {
	    if (counter ==0) { counter++;  }
		if(counter==1)
			{
			time=4000;
			}
		else if(counter==2)
			{
			time=4000;
			}
		
			
	    if(counter==2)
	    	{
	    	window.location = "/pazisex/game/getGame/8"
	    	}
	    $('div','#container')
	      .stop()
	      .hide()
	      .filter( function() { return this.id.match('div' + counter); })   
	      .show('fast');
	    counter == 2? counter = -1: counter++; 
	    if(counter!=-1)
	    	{
	    	setTimeout(function(){showDiv()}, time)
	    	}
	    
	  }

	});

</script>
</body>
</html>