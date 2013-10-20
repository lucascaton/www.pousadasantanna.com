class Notifier < ActionMailer::Base
  default from: 'contato@pousadasantanna.com'

  def contact(contact_form)
    @name    = contact_form[:name]
    @company = contact_form[:company]
    @email   = contact_form[:email]
    @phone   = contact_form[:phone]
    @message = contact_form[:message]

    subject = "Mensagem enviada pelo site por #{@name}"
    mail_to = Rails.env.production? ? 'pousadasantanna@gmail.com' : 'lucascaton@gmail.com'

    mail to: mail_to, subject: subject, reply_to: @email
  end
end
