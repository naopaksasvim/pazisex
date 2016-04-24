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
<aside class="left"></aside>

<div class="content">
	<div class="header-logo"></div>
		<div class="text-wrap text-center bubble-holder">
			<h1 class="entry-title">Uvod</h1>
			<img 
				class="img-responsive" 
				src="/pazisex/resources/css/images/marija_stefan.png"
				alt="marija i stefan"
				style="margin-top: 80px;" />
		
	
	
		<div id='div1' style="display:none;" class="left"> 
		  	<span>Cao, ja sam Marija!</span>
		</div>
		
		<div id='div2' style="display:none;" class="right"> 
			<span>Cao, ja sam Stefan!</span>
		</div>
		
		<div id='div3' style="display:none;" class="left"> 
			<span>Juce smo se posvadjali jer sam ja rekla da hocu da poravljam bajs.</span>
		</div>
		
		<div id='div4' style="display:none;" class="right"> 
		<span>... Ali muskarci su urodjeno bolji u nekim stvarima</span>
		</div>
		
		<div id='div5' style="display:none;" class="left"> 
			<span>Ne u ovome! slazem se da postoje neke razlike, na primer ne moze muskarac da bude X</span>
		</div>
		
		<div id='div6' style="display:none;" class="right"> 
			<span>Sto ne moze?</span>
		</div>
	</div>
</div>
<aside class="right"></aside>
<script>
$(function() {

	  var timer = setInterval( showDiv, 3000);

	  var counter = 0;

	  function showDiv() {
	    if (counter ==0) { counter++; return; }

	    if(counter==6)
	    	{
	    	window.location = "/pazisex/game/getGame/2"
	    	}
	    $('div','#container')
	      .stop()
	      .hide()
	      .filter( function() { return this.id.match('div' + counter); })   
	      .show('fast');
	    counter == 6? counter = 0 : counter++; 

	  }

	});
</script>
</body>
</html>