$(document).ready(function() {

  $("#owl-demo").owlCarousel({
      autoPlay : 6000,
      navigation : false, // Show next and prev buttons
      slideSpeed : 600,
      paginationSpeed : 400,
      singleItem:true

      // "singleItem:true" is a shortcut for:
      // items : 1,
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false

  });

  var fixmeTop = $('.pg').offset().top;
  $(window).scroll(function() {
    var currentScroll = $(window).scrollTop();
    if (currentScroll >= fixmeTop) {
        $('.careerFields').css({
            position: 'fixed',
            top: '0',
            "margin-top": "80px"
        });
    } else {
        $('.careerFields').css({
            position: 'static',
            "margin-top": "0px"
        });
    }
});

});
