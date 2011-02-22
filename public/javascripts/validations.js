$(function(){
  validatesContactForm();
});

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
