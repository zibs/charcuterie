document.addEventListener("turbolinks:load", function(){
  // $(".nav-link").click(function(e){
  //   e.preventDefault()
  //   e.stopPropagation()
  //   var id = $(this).attr('href')
  //   $('section.active').removeClass('active').addClass('hidden');
  //   $(id).removeClass('hidden').addClass('active');
  // })
});

document.addEventListener("turbolinks:load", function(){
//   console.log('do i get here?');
//   var scroller = {};
//   scroller.e = document.body
//
//   if (scroller.e.addEventListener) {
//       scroller.e.addEventListener("mousewheel", MouseWheelHandler, false);
//       scroller.e.addEventListener("DOMMouseScroll", MouseWheelHandler, false);
//   } else scroller.e.attachEvent("onmousewheel", MouseWheelHandler);
//
// function MouseWheelHandler(e) {
//     console.log('whats this function');
//     // cross-browser wheel delta
//     var e = window.event || e;
//     var delta = - 1 * (Math.max(-1, Math.min(1, (e.wheelDelta || -e.detail))));
//     console.log(delta);
//     var pst = $('body').scrollLeft() + delta;
//     console.log(pst);
//     // console.log(pst);
//
//     // if (pst < 0) {
//     //     pst = 0;
//     // } else if (pst > $('body').width()) {
//     //     pst = $('body').width();
//     // }
//
//     $('body').scrollLeft(pst);
//
//     return false;
// }
});
