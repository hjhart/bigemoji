;
(function ($, window, undefined) {
  'use strict';

  var $doc = $(document),
    Modernizr = window.Modernizr;


  $.fn.foundationAlerts ? $doc.foundationAlerts() : null;
  $.fn.foundationAccordion ? $doc.foundationAccordion() : null;
  $.fn.foundationTooltips ? $doc.foundationTooltips() : null;
  $('input, textarea').placeholder();


  $.fn.foundationButtons ? $doc.foundationButtons() : null;


  $.fn.foundationNavigation ? $doc.foundationNavigation() : null;


  $.fn.foundationTopBar ? $doc.foundationTopBar() : null;

  $.fn.foundationCustomForms ? $doc.foundationCustomForms() : null;
  $.fn.foundationMediaQueryViewer ? $doc.foundationMediaQueryViewer() : null;


  $.fn.foundationTabs ? $doc.foundationTabs() : null;


  // UNCOMMENT THE LINE YOU WANT BELOW IF YOU WANT IE8 SUPPORT AND ARE USING .block-grids
  // $('.block-grid.two-up>li:nth-child(2n+1)').css({clear: 'both'});
  // $('.block-grid.three-up>li:nth-child(3n+1)').css({clear: 'both'});
  // $('.block-grid.four-up>li:nth-child(4n+1)').css({clear: 'both'});
  // $('.block-grid.five-up>li:nth-child(5n+1)').css({clear: 'both'});

  // Hide address bar on mobile devices
  if (Modernizr.touch) {
    $(window).load(function () {
      setTimeout(function () {
        window.scrollTo(0, 1);
      }, 0);
    });
  }
  
  	$(document).ready(function() {
  		var timeout = setTimeout(function() {
  			$('.alert-box').fadeOut();
  		}, 3000);
  		
  		$('#caption').focus();
      
  	});
  

})(jQuery, this);

$(document).ready(function () {
  var ua = navigator.userAgent.toLowerCase();
  var using_safari = false;
  if (ua.indexOf('safari') != -1) {
    if (ua.indexOf('chrome') > -1) {
    } else {
      using_safari = true;
    }
  }

  if(!using_safari) {
    console.log("no safari!");
    var html = '<div class="panel"><h3>You are not seeing the right thing!</h3><h5 class="subheader">This website really makes no sense unless you are using Safari. If it is not already installed on your computer, it probably is not worth your time to go and get it, but if you insist – you can do so below</h5><a class="button" href="http://www.apple.com/safari/download">Download Safari »</a></div>'
    $('#container').append(html);
  }
});
