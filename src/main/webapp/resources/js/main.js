$(document).ready(function() {
	$('a, input[type="submit"]').on('click', function(){
		$('aside, .content').addClass('blured');$('.sk-folding-cube').show();
	});
});