document.addEventListener("turbolinks:load", function(){
  $(".nav-link").click(function(e){
    e.stopPropagation()
    // alert('asd')
    // console.log($(this));
    // console.log($(this).attr('href'));
    // $(".info").removeClass('hidden').fadeIn()
    var id = $(this).attr('href')
    console.log(id);
    $('.active').removeClass('active').addClass('hidden');
    $(id).removeClass('hidden').addClass('active');



  })
});
