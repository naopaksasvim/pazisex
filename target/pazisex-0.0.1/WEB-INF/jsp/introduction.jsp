<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" pageEncoding="ISO-8859-1"%>
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
<h1 class="entry-title">Uvod</h1>
<div id="time" class="entry-title"></div>
<img src="/pazisex/resources/css/images/marija_stefan.png" alt="marija i stefan" />
<div id="container">
<div id='div1' style="display:none;"> 
  cao, ja sam marija!
</div>

<div id='div2' style="display:none;"> 
cao, ja sam stefan!
</div>

<div id='div3' style="display:none;"> 
juce smo se posvadjali jer sam ja rekla da hocu da poravljam bajs.
</div>
<div id='div4' style="display:none;"> 
... ali muskarci su urodjeno bolji u nekim stvarima
</div>
<div id='div5' style="display:none;"> 
ne u ovome! slazem se da postoje neke razlike, na primer ne moze muskarac da bude X
</div>
<div id='div6' style="display:none;"> 
sto ne moze?
</div>
</div>
</div>
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