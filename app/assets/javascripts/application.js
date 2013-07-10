//= require jquery
//= require jquery_ujs
//= require jquery.touch-gallery-1.0.0.min
//= require jquery.ie6blocker
//= require_tree .

$(function(){
  configExternalLink();
  configPhotoGallery();
  configMessageTextArea();
  validatesContactForm();
});

function configExternalLink(){
  $(".external").click(function(){
    window.open($(this).attr('href'));
    return false;
  });
}

function configPhotoGallery(){
  $('img[data-large]').touchGallery({
    getSource: function(){
      return $(this).attr('data-large');
    }
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

function validatesContactForm(){
  $('#center_form form').submit(function(){
    if($('#contact_form_name').val() == ''){
      alert("Preencha o campo 'Nome'");
      return false;
    }
    if($('#contact_form_email').val() == ''){
      alert("Preencha o campo 'E-mail'");
      return false;
    }
    if(($('#contact_form_message').val() == '')||($('#contact_form_message').val() == 'Digite aqui sua mensagem...')){
      alert("Digite uma mensagem.");
      return false;
    }
  });
}
