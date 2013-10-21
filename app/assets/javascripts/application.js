//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$(function(){
  $('a.scroll[href*=#]:not([href=#])').click(function(){
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname){
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');

      if (target.length){
        $('html,body').animate({
          scrollTop: target.offset().top - 12
        }, 1000);
        return false;
      }
    }
  });
});
