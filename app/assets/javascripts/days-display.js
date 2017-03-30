$(function() {
  $(window).bind("load", function() {
    var counter = 0;
    setInterval(function() {
      $(".kday").eq(counter).css('opacity', '1');
      counter = (counter + 1) % $(".kday").length;
    }, 20);
  });
})

