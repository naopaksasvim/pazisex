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
			<h1 class="entry-title">Marija i Stevan</h1>
			<div id="container">
				<section class="char-img-holder">
					<article class="char">
						<img src="/pazisex/resources/css/images/marija.svg"
							class="img-responsive" style="margin: 0 auto; max-width: 80%;"/>
						<div id='div1' style="display:none;" class="left"> 
						  	<span>Ćao, ja sam Marija!</span>
						</div>
						<div id='div3' style="display:none;" class="left"> 
							<span>Juče smo se posvadjali jer sam ja rekla da hoću da igram fudbal sa dečacima jer sam otkrila da sam dobra u tome i da mi se sviđa. </span>
						</div>
						<div id='div5' style="display:none;" class="left"> 
							<span>Kakve ima veze, što si tako zatvorenog uma?! Pa sigurno i ti voliš nešto netipično…</span>
						</div>
						<div id='div7' style="display:none;" class="left"> 
							<span>  Kakvo si ti muško što voliš da vezeš?!</span>
						</div>
					</article>
					<article class="char">
						<img src="/pazisex/resources/css/images/stefan.svg"
							class="img-responsive" style="margin: 0 auto" />
						<div id='div2' style="display:none;" class="right"> 
							<span>Ćao, ja sam Stevan! Mi idemo u isto odeljenje.</span>
						</div>
						<div id='div4' style="display:none;" class="right"> 
							<span>….ali ti si žensko, ne ide to uz devojke. </span>
						</div>
						<div id='div6' style="display:none;" class="right"> 
							<span> Pa dobro da, volim da vezem….</span>
						</div>
					</article>
				</section>
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
			time=5000;
			}
		else if(counter==3)
		{
		time=6000;
		}
		else if(counter==4)
		{
		time=4000;
		}
		else if(counter==5)
		{
		time=6000;
		}
		else if(counter==6)
		{
		time=4000;
		}
		else if(counter==7)
		{
		time=4000;
		}
			
	    if(counter==7)
	    	{
	    	setTimeout(function(){window.location = "/pazisex/game/getGame/88"}, time)
	    	
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