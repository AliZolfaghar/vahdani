/*********************************************************************************

	Template Name: Azan - Islamic HTML Template  
	Template URI: https://themeforest.net/user/hastech
	Description: Azan is a beautiful and creative islamic  html template
	Author: HasTech
	Author URI: https://themeforest.net/user/hastech
	Version: 1.1

	Note: This is active js. Plugins activation code here.

**********************************************************************************/


/*===============================================================================
			[ INDEX ]
=================================================================================

	Silde Active
		Event Slide
		Activity slider active
		Banner Slide
	Mobile Menu
	Wow Active
	ScrollUp
	Video Popup
	Fakeloader

=================================================================================
			[ END INDEX ]
================================================================================*/

(function($) {
	'use strict';

	/*=========== Silde Active ===========*/
	// Event Slide
	$('.event-slide-active').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		dots: true,
		asNavFor: '.event-filters-active',
	});

	$('.event-filters-active').slick({
		infinite: true,
		slidesToShow: 3,
		slidesToScroll: 3,
		centerMode: true,
		focusOnSelect: true,
		arrows: false,
		dots: false,
		asNavFor: '.event-slide-active'
	});

	// Activity slider active
	$('.activity-slider-active').slick({
		infinite: true,
		slidesToShow: 3,
		slidesToScroll: 1,
		focusOnSelect: true,
		arrows: true,
		dots: false,
		prevArrow: '<button class="arrow-prev"><span><i class="fa fa-angle-left"></i></span></button>',
		nextArrow: '<button class="arrow-next"><span><i class="fa fa-angle-right"></i></span></button>',
		responsive: [
			{
				breakpoint: 992,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 768,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1
				}
			}
		]
	});


	// Banner Slide
	$('.banner-slide-active').slick({
		infinite: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		prevArrow: '<button class="arrow-prev"><i class="icofont icofont-rounded-left"></i></button>',
		nextArrow: '<button class="arrow-next"><i class="icofont icofont-rounded-right"></i></button>',
		adaptiveHeight: true
	});

	$('.banner-text-slide').slick({
		infinite: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		prevArrow: '<button class="arrow-prev"><i class="icofont icofont-rounded-left"></i></button>',
		nextArrow: '<button class="arrow-next"><i class="icofont icofont-rounded-right"></i></button>',
		fade: true,
		cssEase: 'linear' 
	});





	/*=========== Mobile Menu ===========*/
	$('.header--style-1 nav.menu').meanmenu({
		meanMenuClose: 'X',
		meanMenuCloseSize: '18px',
		meanScreenWidth: '991',
		meanExpandableChildren: true,
		meanMenuContainer: '.mobile-menu',
		onePage: true
	});

	$('.header--style-2 nav.menu').meanmenu({
		meanMenuClose: 'X',
		meanMenuCloseSize: '18px',
		meanScreenWidth: '991',
		meanExpandableChildren: true,
		meanMenuContainer: '.mobile-menu',
		onePage: true
	});





	/*=========== Wow Active ===========*/
	 new WOW().init();





	/*=========== ScrollUp ===========*/
	$.scrollUp({
	    scrollText: '<i class="fa fa-angle-up"></i>',
	    easingType: 'linear',
	    scrollSpeed: 900,
	    animation: 'slideInRight'
	});


	/*=========== Video Popup ===========*/
	$('a.video--trigger').yu2fvl();


	/*=========== Fakeloader ===========*/
	$('.fakeloader').fakeLoader({
	    timeToHide:1200,
	    spinner:'spinner3'
	});
	

	/*=========== Prayer Times ===========*/
	(function prayerTimesInit(){
		var lat,
			long,
			date,
			zone,
			html;
		date = new Date();
		zone = date.getTimezoneOffset() / -60;
		function prayerTimesFun(lat = 43, long = -80, zone = -5) {
			var prayertimes = prayTimes.getTimes(date, [lat, long], zone, 0, '12h');
			var prayerNames = ['fajr', 'dhuhr', 'asr', 'maghrib', 'isha'];
			for(var i in prayerNames) {
				html = '<div class="salat-times__box"><h4>' + prayerNames[i] + '</h4><span>' + prayertimes[prayerNames[i]] + '</span></div>';
				$('.salat-times__boxes').append(html);
			}
			$('.time-sunrise').text(prayertimes.sunrise);
			$('.time-sunset').text(prayertimes.sunset);
		}
		prayerTimesFun(lat, long, zone);
		function getLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					$('.salat-times__boxes').children().remove();
					var lat = position.coords.latitude,
						long = position.coords.longitude;
					prayerTimesFun(lat, long, zone);
				}, function(error) {
					if( error.PERMISSION_DENIED) {
					  alert("Please allow location traking to see your location prayer times.")
					} else if( error.POSITION_UNAVAILABLE) {
					  alert("Location information is unavailable.")
					} else if( error.TIMEOUT) {
					  alert("The request to get user location timed out.")
					} else if( error.UNKNOWN_ERROR) {
					  alert("An unknown error occurred.")
					}
				});
			} else {
				alert("Geolocation is not supported by this browser.");
			}
		}
		$(window).on('load', getLocation());
		
	})();

			

})(jQuery);
