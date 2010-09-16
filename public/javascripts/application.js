$(document).ready(function(){
  $('#photos').galleryView({
    panel_width:400,
    panel_height:300,
    frame_width:100,
    frame_height:100
  });

  $(".external").click(function(){
    window.open($(this).attr('href'));
    return false;
  });

//Google Analytics ------------------------------->
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
try {
var pageTracker = _gat._getTracker("UA-2643450-5");
pageTracker._trackPageview();
} catch(err) {}
// <-----------------------------------------------

});
