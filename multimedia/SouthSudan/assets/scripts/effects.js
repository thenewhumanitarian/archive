/*
 * Resize sections and full-bleed images
 * Requires jquery.min.js & jquery.smooth-scroll.min.js
 *
 * Phil Moore - fil.moore@gmail.com
 */
 
 
$(document).ready(function() {

	var theWindow1 = $(window);

	function resizeSectionsToWindow() {
		if (theWindow1.width() > 961) {
			$('#sections').height(theWindow1.height()).width(theWindow1.width()*$('.section').length);
			$('.section').height(theWindow1.height()).width(theWindow1.width());
			$(".section .content").height(theWindow1.height() - 70 + "px");
		} else {		
			$("#sections").css({ height: 'auto', width: 'auto'});
			$(".section").css({ height: 'auto', width: 'auto'});
			$(".section .content").height('auto');
		}
		$('.prevarrow').css({top: (theWindow1.height())/2 + "px"});
		$('.nextarrow').css({top: (theWindow1.height())/2 + "px"});
	}	
	theWindow1.resize(resizeSectionsToWindow).trigger("resize");
	
	// create the YouTube/img popups
	$('.fancybox').fancybox({padding: 5, fixed: false});
	$('.fancybox-media')
		.attr('rel', 'media-gallery')
		.fancybox({
			padding : 0,
			prevEffect : 'none',
			nextEffect : 'none',
			width : '100%', 
			height : '100%',
			arrows : false,
			fixed : false,
			aspectRation : true,
			helpers : {
				media : {},
				buttons : {}
			}
		});

});

$(window).load(function() {    

	var theWindow        = $(window),
	    $bg              = $("#introbleed"),
	    aspectRatio      = $bg.width() / $bg.height();

	    			    		
	function resizeToWindow() {
	
		/* REACTIVE SHIZZLE */
		
		// 961 ... 1000
		if (theWindow.width() > 961) {
			
			// resize full bleed images 
			if ( (theWindow.width() / theWindow.height()) < aspectRatio ) {					
			    $bg.removeClass('sizeByWidth').addClass('sizeByHeight').css({marginLeft: ((theWindow.width() - $bg.width()) / 2) + "px"});
			} else {
			    $bg.removeClass('sizeByHeight').addClass('sizeByWidth').css({marginTop: ((theWindow.height() - $bg.height())) / 2 + "px"});
			}			
			
			// scroll window have hashed part in focus
			var tgt = location.hash.replace(/^#\/?/,'');
			if (tgt && document.getElementById(tgt)) {
				$(window).scrollLeft(($('#' + tgt).position().left));
			}
			
		} else {
		
			$bg.removeClass('sizeByHeight sizeByWidth').css({marginTop: 0, marginLeft: 0});
		
		}
	}
	                   			
	theWindow.resize(resizeToWindow).trigger("resize");
	$(window).trigger('hashchange'); // on first load, if target already set, reposition window
	
});


// Add the smooth scrolling to links (with browser history state)
/* $(document).ready(function() {
	$('a.navscroll').smoothScroll({direction: 'left'});
}); */
$(document).on('click', 'a[href*="#"]', function() {
			if ( this.hash && this.pathname === location.pathname ) {
				$.bbq.pushState( '#/' + this.hash.slice(1) );
				return false;
			}
		})
		.ready(function() {
		
			$(window).bind('hashchange', function(event) {
				var tgt = location.hash.replace(/^#\/?/,'');
				if ( document.getElementById(tgt) ) {
					$.smoothScroll({
						direction: 'left',
						scrollTarget: '#' + tgt,
						afterScroll: function() {
							$('#mainNav li').removeClass('current');
							$('#navTo_' + tgt).addClass('current');
							$('body').removeClass().addClass(tgt);
						}
					});
					
				}
			});
		
			$(window).trigger('hashchange');
		});
