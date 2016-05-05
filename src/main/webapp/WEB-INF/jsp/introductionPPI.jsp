<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
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
					
				<div id='div1' style="display:none;" class="left"> 
				  	<span>Ne znam da li smo spremni za seks? Da li je opasno?</span>
				</div>
				
				<div id='div2' style="display:none;" class="right"> 
					<span> Kada je u pitanju seks, bitno je biti i psihički i fizički spreman/na! </span>
				</div>
				
				<div id='div3' style="display:none;" class="left"> 
					<span> Psihička spremnost? Ja ga volim! </span>
				</div>
				
				<div id='div4' style="display:none;" class="right"> 
				<span>NE RADI SE SAMO O TOME! Ne radi se samo o tome kako se osećaš prema osobi sa kojom treba da imaš seks, već da li si spreman/na za tako veliku promenu i sve što ona može da nosi! </span>
				</div>
				
				<div id='div5' style="display:none;" class="left"> 
					<span>Fizički aspekt - što fizički, da li treba da ídem u teretanu?</span>
				</div>
				
				<div id='div6' style="display:none;" class="right"> 
					<span> Ne, već pored toga što treba da imaš dovoljno godina, treba voditi računa između ostalog i o  NEŽELJENOJ TRUDNOĆI I POLNO PRENOSIVIM INFEKCIJAMA</span>
				</div>
				
				<div id='div7' style="display:none;" class="left"> 
					<span>Šta je to?</span>
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
			time=6000;
			}
		else if(counter==2)
			{
			time=7000;
			}
		else if(counter==3)
		{
		time=5000;
		}
		else if(counter==4)
		{
		time=7000;
		}
		else if(counter==5)
		{
		time=5000;
		}
		else if(counter==6)
		{
		time=7000;
		}
		else if(counter==7)
		{
		time=4000;
		}
			
	    if(counter==7)
	    	{
	    	window.location = "/pazisex/game/getGame/108"
	    	}
	    $('div','#container')
	      .stop()
	      .hide()
	      .filter( function() { return this.id.match('div' + counter); })   
	      .show('fast');
	    counter == 7? counter = -1: counter++; 
	    if(counter!=-1)
	    	{
	    	setTimeout(function(){showDiv()}, time)
	    	}
	    
	  }

	});

</script>
</body>
</html>