document.addEventListener("turbolinks:load", function(){
  $(".nav-link").click(function(e){
    e.stopPropagation()
    var id = $(this).attr('href')
    console.log(id);
    $('.active').removeClass('active').addClass('hidden');
    $(id).removeClass('hidden').addClass('active');
  })
});
