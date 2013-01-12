Pousadasantanna::Application.routes.draw do
  root to: 'static_content#index'

  resources :photos
  resources :admin, only: [:index]

  get '/acomodacoes' => 'static_content#accommodation'
  get 'fale_conosco' => 'static_content#contact_form', as: :contact_form
  post 'contact'     => 'static_content#contact'
  get 'galeria'      => 'static_content#gallery'
  get 'localizacao'  => 'static_content#localization'
end
