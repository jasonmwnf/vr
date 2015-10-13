//= require bootstrap-sprockets
//= require scroll
//= require retina-1.1.0.min
//= require jquery.easing
//= require menu
//= require jquery.fs.tipper.min
//= require owl.carousel.min
//= require portfolio-ajax
//= require jquery.fitvids
//= require jquery.parallax-1.1.3
//= require jquery.chaffle.min.js
//= require custom-home

(function($) { "use strict";
			jQuery(document).ready(function() {
				var offset = 350;
				var duration = 500;
				jQuery(window).scroll(function() {
					if (jQuery(this).scrollTop() > offset) {
						jQuery('.scroll-to-top').fadeIn(duration);
					} else {
						jQuery('.scroll-to-top').fadeOut(duration);
					}
				});

				jQuery('.scroll-to-top').click(function(event) {
					event.preventDefault();
					jQuery('html, body').animate({scrollTop: 0}, duration);
					return false;
				})
			});
})(jQuery);
(function($) { "use strict";
	$(".container").fitVids();
})(jQuery);

(function($) { "use strict";
	$(document).ready(function() {
	  $('.chaffle').chaffle({
		speed: 10,
		time: 60
	  });
	});
})(jQuery);
