$(document).ready(function(){
  var enableSlick = function enableSlick() {
    $('.latest-post-content').slick({
      centerMode: true,
      centerPadding: '10px',
      slidesToShow: 3,
      responsive: [
        {
          breakpoint: 980,
          settings: {
            centerMode: false,
            slidesToShow: 2
          }
        },
        {
          breakpoint: 660,
          settings: {
            arrows: false,
            centerMode: true,
            centerPadding: '35px',
            slidesToShow: 1
          }
        }
      ]
    });
  };

  var disableSlick = function disableSlick() {
    $('.latest-post-content').unslick();
  };

  var isMobile = function isMobile() {
    return $('#mobile-indicator').is(':visible');
  };

  (function slickHandler() {
    isMobile() ? disableSlick() : enableSlick();
  })();
});
