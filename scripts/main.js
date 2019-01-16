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
	$('.canhcam-header-1 .btn-open-menu').on('click', function () {
		$('.canhcam-header-1 .btn-open-menu').toggleClass('active')
		$('.sidemenu').toggleClass('active')
		$('.canhcam-header-1 .nav-bottom').toggleClass('active')
		$(' .sidemenu-backdrop').toggleClass('active')
	})
	$(' .sidemenu-backdrop').on('click', function () {
		$('.canhcam-header-1 .btn-open-menu').toggleClass('active')
		$('.sidemenu').toggleClass('active')
		$('.canhcam-header-1 .nav-bottom').toggleClass('active')
		$(' .sidemenu-backdrop').toggleClass('active')
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

//////  PRODUCT DETAIL ////////
function slider_product_detail() {
	$('.canhcam-product-detail-1 .list-items-main').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: false,
		asNavFor: '.list-items-sub'
	});
	$('.canhcam-product-detail-1 .list-items-sub').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		asNavFor: '.list-items-main',
		arrows: true,
		dots: false,
		centerMode: false,
		focusOnSelect: true
	});

};


function show_more_product_detail() {

	$('.canhcam-product-detail-3  .detail .btn-more ').each(function () {
		$('.canhcam-product-detail-3  .detail .block-more').slideUp()
		$(this).on('click', (function () {
			$('.canhcam-product-detail-3 .detail').toggleClass('active');
			// $('.canhcam-product-detail-3  .detail .btn-more ').hide()
			$('.canhcam-product-detail-3  .detail .block-more').slideToggle()
			$('.canhcam-product-detail-3 .detail .btn-more').text('XEM THÊM');
			$('.canhcam-product-detail-3 .detail.active .btn-more').text('THU GỌN');
		}))
	})
};

////// END OF PRODUCT DETAIL ////////


////// SUPPORT CUSTOMER ////////
function show_more_supprt_cus() {
	$('.canhcam-support-cus-1 .canhcam-kl-1 .item .name').each(function () {
		$(this).parents('.item').find('.introduce').slideUp();
		$(this).on('click', (function () {
			if ($(this).parents('.item').find('.introduce').length) {
				$(this).parents('.item').toggleClass('active')
			}
			$(this).parents('.item').find('.introduce').slideToggle();


			$(this).parents('.item').siblings().find('.introduce').slideUp();
			$(this).parents('.item').siblings().removeClass('active');
		}))
	})

}


////// END OF SUPPORT CUSTOMER ////////


function show_more_project() {
	$('.canhcam-project-1  .wrapper-img figcaption .btn-more ').each(function () {
		$('.canhcam-project-1  .wrapper-img figcaption .detail .fullcontent').slideUp()
		$(this).on('click', (function () {

			// $('.canhcam-project-1  .wrapper-img figcaption .btn-more ').hide()
			$(this).parents('figcaption').find('.fullcontent').slideToggle()
			$(this).parents('figcaption').toggleClass('active');
			$(this).text('XEM THÊM');
			$('.canhcam-project-1 .wrapper-img figcaption.active .btn-more').text('THU GỌN');
		}))
	})
}





////// NEWS DETAIL ////////
function createNewsSocial1() {
	var newsFullPath = document.URL
	var newsFullPathEncode = encodeURIComponent(document.URL)
	$('.fb-share-button').attr('data-href', newsFullPath)
	$('.fb-share-button .fb-xfbml-parse-ignore').attr('href', 'https://www.facebook.com/sharer/sharer.php?u=' + newsFullPathEncode + '&src=sdkpreparse')
	$('.twitter-share-button').attr('data-url', newsFullPath)
}


////// END OF NEWS DETAIL ////////

function news_photo() {

	$(".canhcam-news-photo-1  .box-zoom").lightGallery({
		thumbnail: true,
		selector: 'a'
	});

	// $('.canhcam-news-photo-1 .wrapper-gallery').each(function() {
	// 	$(this).click(function() {
	// 		$(this).find('.hidden a:first-child').trigger('click')
	// 	})
	// });
}

function addClassByLocation() {
	let i = window.location.pathname
	if (i.search('gioi-thieu') > 0) {
		$('.Module.Module-142 .zonelist .nav-item:first-child .nav-link').addClass('active')
	} else if (i.search('san-pham-4') > 0) {
		$('.Module.Module-142 .zonelist .nav-item:nth-child(2) .nav-link').addClass('active')
	} else if (i.search('dich-vu') > 0) {
		$('.Module.Module-142 .zonelist .nav-item:nth-child(3) .nav-link').addClass('active')
	} else if (i.search('du-an') > 0) {
		$('.Module.Module-142 .zonelist .nav-item:nth-child(4) .nav-link').addClass('active')
	} else if (i.search('tin-tuc-1') > 0) {
		$('.Module.Module-142 .zonelist .nav-item:nth-child(6) .nav-link').addClass('active')
	} else if (i.search('tuyen-dung') > 0) {
		$('.Module.Module-142 .zonelist .nav-item:nth-child(7) .nav-link').addClass('active')
	}
}

///////// MAIN Control /////
$(document).ready(function () {
	// $('.canhcam-news-photo-1  .box-zoom a').fancybox({
	// 	width: 640,
	// 	height: 400,
	// 	type: 'iframe'
	// });



	// 	$(".canhcam-news-photo-1  .box-zoom").lightGallery({
	// 	thumbnail: true,
	// 	selector: 'a'
	// });
	/// GLOBAL ///
	addClassByLocation()
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


	/// PRODUCT ///
	slider_product_detail();
	/// END PRODUCT ///


	/// PRODUCT DETAIL ///
	show_more_product_detail();
	/// END PRODUCT DETAIL ///


	/// SUPPORT CUSTOMER ///
	show_more_supprt_cus();
	show_more_project();
	/// END OF SUPPORT CUSTOMER ///


	/// NEWS DETAIL ///
	createNewsSocial1();
	/// END OF NEWS DETAIL ///
	news_photo();
});
$(window).resize(function () {});
///////// END OF MAIN Control /////