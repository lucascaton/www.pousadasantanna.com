class Notifier < ActionMailer::Base
  default :from => 'contato@pousadasantanna.com'
 
  def contact(contact_form)
    @company = contact_form[:company]
    @name    = contact_form[:name]
    @email   = contact_form[:email]
    @phone   = contact_form[:phone]
    @message = contact_form[:message]
    mail :to => 'pousadasantanna@gmail.com', :subject => 'Mensagem enviada pelo site'
  end
end
