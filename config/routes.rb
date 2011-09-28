Pousadasantanna::Application.routes.draw do
  root :to => 'static_content#index'

  resources :photos
  resources :admin, :only => [:index]

  match '/acomodacoes' => 'static_content#accommodation'
  match 'fale_conosco' => 'static_content#contact_form', :as => :contact_form
  match 'contact' => 'static_content#contact', :method => :post
  match 'galeria' => 'static_content#gallery'
  match 'localizacao' => 'static_content#localization'
end
