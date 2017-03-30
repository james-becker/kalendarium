$(function() {
  $(window).bind("load", function() {
    var counter = 0;
    setInterval(function() {
      $(".day").eq(counter).css('opacity', '1');
      counter = (counter + 1) % $(".day").length;
    }, 50);
  });
})

