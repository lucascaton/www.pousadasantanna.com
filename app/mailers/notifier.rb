class Notifier < ActionMailer::Base
  default :from => 'contato@pousadasantanna.com'
 
  def contact(contact_form)
    @company         = contact_form[:company]
    @name            = contact_form[:name]
    @email           = contact_form[:email]
    @phone           = contact_form[:phone]
    @message_subject = contact_form[:message_subject]
    @message         = contact_form[:message]

    subject = "Mensagem enviada pelo site "
    subject << (@message_subject.blank? ? "por #{@name}" : "- \"#{@message_subject}\"")

    mail :to => 'pousadasantanna@gmail.com', :subject => subject
  end
end
