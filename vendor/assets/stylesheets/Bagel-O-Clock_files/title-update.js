$(document).on('ready', function(){

	checkitem();
	setTitleData();
	$('.carousel-control').on('click', function(){
		$('.step-container').toggleClass("fade");
		setTimeout(function(){
			checkitem();
			setTitleData();
			$('.step-container').toggleClass("fade");
		},750);
	});
});

function setTitleData() {
	var step = $('.item.active').data("title").step;
	var instruction = $('.item.active').data("title").instruction;
	$('.step-container .step').text(step);
	$('.step-container .instruction').text(instruction);
};

function checkitem() {
	var $this;
	$this = $("#bagelCarousel");
	if ($("#bagelCarousel .carousel-inner .item:first").hasClass("active")) {
		$this.children(".left").hide(300);
		$this.children(".right").show(300);
	} else if ($("#bagelCarousel .carousel-inner .item:last").hasClass("active")) {
		$this.children(".right").hide(300);
		$this.children(".left").show(300);
	} else {
		$this.children(".carousel-control").show(300);
	}
};
