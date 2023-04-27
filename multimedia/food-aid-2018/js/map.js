	jQuery(document).ready(function($){

		// alert("map");
		var $m = $("#WFP_Map");		
		var screen_w;
		var screen_h;
		var mobile;
		var mobile_breakpoint = 812;

		var pinned = false;
		var zindex = 0;				

		getScreenSize();
		if(mobile) overlayMobile();
		else overlayDesktop();

		resetWindow();

		function resetWindow(){
			if(window.attachEvent) {
				window.attachEvent('onresize', getScreenSize);
			}
			else if(window.addEventListener) {
				window.addEventListener('resize', getScreenSize, true);
			}
		}

		function getScreenSize(){
			screen_w = window.innerWidth;
			screen_h = window.innerHeight;								
			mobile = window.matchMedia("(max-width: "+mobile_breakpoint+"px)").matches;
		}
		
		function overlayMobile(){
			scaleMap();
			setClass();
			toggleOverlay();

			function scaleMap(){
				var mh = $m.height();	
				var scale = screen_h / mh;
				$m.css("transform","scale("+scale+")");			
			}
			function setClass(){
				$(".overlay_text").addClass("mobile");
				if(screen_h < screen_w) $(".overlay_text").addClass("landscape");
			}
			function toggleOverlay(){
				$(".overlay_map").click(function(){
					var c = $(this).attr("data-country");
					$(".overlay_map, .overlay_text").removeClass('active');				
					$(".overlay_"+c).addClass('active');
				});				
				$(".overlay_text").find("h1").click(function(){
					$(".overlay_map, .overlay_text").removeClass('active');				
				});	
			}			
		};

		function overlayDesktop(){
			$(".overlay_map").hover(function(e){
				var c = $(this).attr("data-country");
				var $current = $(".overlay_"+c);
				var $current_text = $(".overlay_text.overlay_"+c);

				// get mouse position
				if(!pinned){
					var x_marg = 60;
					var y_marg = 20;
					var c_h = $current_text.height();
					var c_w = $current_text.width();

					var pos_x = e.pageX + x_marg; 
					var pos_y = e.pageY;
					
					if(pos_y + c_h > screen_h){
						pos_y = screen_h - c_h - (y_marg*2);
					}
					else if(pos_y - c_h < 0){
						pos_y = y_marg;
					}

					var start_x = (pos_x < screen_w/2) ? 0 : -(c_w + x_marg*2);
					var start_y = (pos_y < screen_h/2) ? 0 : 0;//-(c_h);// * y_marg);

					$current_text.css({
						'top':start_y,
						'left':start_x,
						'transform': "translate("+pos_x+"px,"+pos_y+"px)"							
					});

					setTimeout(function(){
						$current_text.css("transition","transform 0.5s ease");												
					},500);

					pinned = true;
				}
				
				// toggle overlay				
				$(".overlay_text.overlay_"+c).css('z-index',++zindex);
				$current.toggleClass('active');
				
				$(this).click(function(){
					$current.toggleClass('locked');						
				});
			});

			$(".overlay_map").mouseleave(function(){
				pinned = $(this).hasClass('locked');
			});

			$("h1").click(function(){
				if($(this).parent().hasClass('locked')){
					var classes = $(this).parent().attr('class').split(/\s+/);
					for(var i=0;i<classes.length;i++){
						if(classes[i]!='overlay_text' && classes[i]!='locked'){
							$('.'+classes[i]).removeClass('locked');
						}
					}
				}
			});					
		}
		
	});