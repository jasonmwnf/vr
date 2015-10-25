//= require bootstrap-sprockets
//= require bootstrap-file-input.js
//= require scroll
//= require retina-1.1.0.min
//= require jquery.easing
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


$(document).on('change', '.btn-file :file', function() {
  var input, label, numFiles;
  input = $(this);
  numFiles = input.get(0).files ? input.get(0).files.length : 1;
  label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
  input.trigger('fileselect', [numFiles, label]);
});

$(document).ready(function() {
  $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
    var input, log;
    input = $(this).parents('.input-group').find(':text');
    log = numFiles > 1 ? numFiles + ' files selected' : label;
    if (input.length) {
      input.val(log);
    } else {
      if (log) {
        alert(log);
      }
    }
  });
});
