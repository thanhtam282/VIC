function setHeightH3() {
	var maxHeight = 0;

	$('.canhcam-header-1 .mainnav .nav-bottom ').each(function () {
		var thisH = $(this).height();
		if (thisH > maxHeight) {
			maxHeight = thisH;
		}
	});
	$('.sidemenu ').height(maxHeight)
}


$(function () {
	$('.btn-primary').on('click', function () {
		$('.sidemenu').toggleClass('active')
		$('.nav-bottom').toggleClass('active')
		$('.sidemenu-backdrop').toggleClass('active')
	})
	$('.sidemenu-backdrop').on('click', function () {
		$('.sidemenu').toggleClass('active')
		$('.nav-bottom').toggleClass('active')
		$('.sidemenu-backdrop').toggleClass('active')
	})
})


////// GLOBAL ////////
function display_search() {
	$('.search').click(function () {
		$('.searchbox').toggleClass('active')
	})
}
const navMapping = () => {
	return new MappingListener({
		selector: 'ul.nav.social',
		mobileWrapper: '.sidemenu',
		mobileMethod: 'appendTo',
		desktopWrapper: '.canhcam-header-1 .mainnav .nav-top',
		desktopMethod: 'appendTo',
		breakpoint: 992
	}).watch();
}
const navMapping_lang = () => {
	return new MappingListener({
		selector: '.language',
		mobileWrapper: '.sidemenu',
		mobileMethod: 'appendTo',
		desktopWrapper: '.canhcam-header-1 .mainnav .nav-top',
		desktopMethod: 'appendTo',
		breakpoint: 992
	}).watch();
}

function slider_banner() {
	if ($('.canhcam-banner-1 .list-items').length) {
		$(".canhcam-banner-1 .list-items").slick({
			autoplay: false,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 4000,
			dots: true,
			infinite: true,
			speed: 300,
			arrows: false,
			slidesToShow: 1,
			slidesToScroll: 1,
			// customPaging: function(slider, i) {
			//     var thumb = $(slider.$slides[i]).data('thumb');
			//     return '<a><p> ' + thumb + '</p></a>';
			// },
		});
	}

};
////// END OF GLOBAL ////////


////// HOME ////////
function slider_home() {
	if ($('.canhcam-slider-1 .list-items').length) {
		$(".canhcam-slider-1 .list-items").slick({
			autoplay: true,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 4000,
			dots: true,
			infinite: true,
			speed: 300,
			arrows: false,
			slidesToShow: 1,
			slidesToScroll: 1,
			// customPaging: function(slider, i) {
			//     var thumb = $(slider.$slides[i]).data('thumb');
			//     return '<a><p> ' + thumb + '</p></a>';
			// },
		});
	}

};

function slider_bot() {
	$('.canhcam-home-3 .owl-carousel').owlCarousel({
		loop: true,
		autoplay: false,
		autoplayTimeout: 4000,
		nav: true,
		items: 3,
		margin: 10,
		dots: false,
		navText: ["<span class='material-icons'>arrow_back_ios</span>", "<span class='material-icons'>arrow_forward_ios</span>"],
		responsive: {
			0: {
				items: 1

			},
			576: {
				items: 2

			},
			888: {
				items: 3
			}
		}

	})
};
function slider_news_home() {
	$('.canhcam-home-4 .owl-carousel').owlCarousel({
		loop: true,
		autoplay: false,
		autoplayTimeout: 4000,
		nav: true,
		items: 4,
		margin: 30,
		dots: false,
		navText: ["<span class='material-icons'>arrow_back_ios</span>", "<span class='material-icons'>arrow_forward_ios</span>"],
		responsive: {
			0: {
				items: 1

			},
			375: {
				items: 1

			},
			768: {
				items: 2

			},
			888: {
				items: 3
			},
			1100: {
				items: 4
			}
		}

	})
};

////// END OF HOME ////////





///////// MAIN Control /////
$(document).ready(function () {
	/// GLOBAL ///

	/// END GLOBAL ///
	/// HEADER ///
	display_search();
	navMapping();
	navMapping_lang();
	slider_banner();

	/// END HEADER ///
	
	/// HOME ///
	slider_bot();
	slider_news_home();
	slider_home()

	/// END HOME ///
	
});
$(window).resize(function () {

	// marginheader();
});
///////// END OF MAIN Control /////