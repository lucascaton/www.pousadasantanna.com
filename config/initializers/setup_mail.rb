ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => :true,
  :address              => 'smtp.gmail.com',
  :port                 => 587,
  :domain               => 'pousadasantanna.com',
  :authentication       => :plain,
  :user_name            => 'contato@pousadasantanna.com',
  :password             => '4582T64582T6',
  :tls                  => true
}
