$(document).ready(function(){
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
});
