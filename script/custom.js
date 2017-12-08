

// ============= PRELOADER SCRIPT ===================

$(window).load(function() { // makes sure the whole site is loaded

	"use strict";
    
    $('#preloader').delay(600).fadeOut('slow'); // will fade out the white DIV that covers the website.
    $('#spinner').fadeOut(); // will first fade out the loading animation
	
})


$(document).ready(function(){
	
	"use strict";
	
	$('a').smoothScroll({offset:0});
	
	new WOW().init();
	
	
    // ============= TIMELINE SLIDER SETTINGS =============
    var owl = $("#timeline-slider");
    owl.owlCarousel({
        items : 3, 
        itemsDesktop : [1400,2], 
        itemsDesktopSmall : [900,1], 
        itemsTablet: [800,1], 
        itemsMobile : [500,1],
		autoPlay : 4000,
		stopOnHover:true
    });
	
	
	// ============= OPINION SLIDER SETTINGS =============
    var owl = $("#opinion-slider");
    owl.owlCarousel({
		  navigation : false, // Show next and prev buttons
		  slideSpeed : 300,
		  paginationSpeed : 400,
		  singleItem:true,
		  autoPlay : 8000,
		  stopOnHover:true
    });
	  
              

});