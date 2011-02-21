$(function(){
  configExternalLink();
  configPhotoGallery();
  configMessageTextArea();
});

function configExternalLink(){
  $(".external").click(function(){
    window.open($(this).attr('href'));
    return false;
  });
}

function configPhotoGallery(){
  $('#photos').galleryView({
    panel_width:400,
    panel_height:300,
    frame_width:100,
    frame_height:100
  });
}

function configMessageTextArea(){
  $('#contact_form_message')
  .focus(function(){
    if($(this).val()=='Digite aqui sua mensagem...'){
      $(this).css('color', '#222').val('');
    }
  })
  .blur(function(){
    if($(this).val()==''){
      $(this).css('color', '#999').val('Digite aqui sua mensagem...');
    }
  });
}


//Google Analytics ------------------------------->
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
try {
var pageTracker = _gat._getTracker("UA-2643450-5");
pageTracker._trackPageview();
} catch(err) {}
// <-----------------------------------------------
