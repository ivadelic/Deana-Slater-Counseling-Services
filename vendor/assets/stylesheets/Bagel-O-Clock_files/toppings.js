$(document).on('ready', function(){

	$("input:radio[class=bagel-radio]").click(function() {
		var value = "/assets/" + $(this).data("image");
		$('.bagel.display').attr('src',value);
	});

	$("input:radio[class=topping1-radio]").click(function() {
		var value = "/assets/" + $(this).data("image");
		$('.topping1.display').attr('src',value);
	});

	$("input:radio[class=topping2-radio]").click(function() {
		var value = "/assets/" + $(this).data("image");
		$('.topping2.display').attr('src',value);
	});

	$("input:radio[class=topping3-radio]").click(function() {
		var value = "/assets/" + $(this).data("image");
		$('.topping3.display').attr('src',value);
	});

});
