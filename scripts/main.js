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


function display_search() {
	$('.search').click(function () {
		$('.searchbox').toggleClass('active')
	})
}

$(document).ready(function () {
	// marginheader();
	// setHeightH3();
	display_search();
	navMapping();
	navMapping_lang();
	// navMapping_search();
	// try {
	// } catch (error) {
	// 	console.error(error)
	// }
});
$(window).resize(function () {

	// marginheader();
});

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
const navMapping_search = () => {
	return new MappingListener({
		selector: '.searchbox',
		mobileWrapper: '.sidemenu',
		mobileMethod: 'appendTo',
		desktopWrapper: '.canhcam-header-1 .mainnav .nav-bottom',
		desktopMethod: 'insertAfter',
		breakpoint: 992
	}).watch();
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


////// HOME ////////
$(function () {
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
		
	});
////// END OF HOME ////////
