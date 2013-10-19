PousadaSantanna::Application.routes.draw do
  root to: 'pages#index'

  resources :photos
  resources :admin, only: [:index]

  get  '/acomodacoes'  => 'pages#accommodation'
  get  '/fale_conosco' => 'pages#contact_form', as: :contact_form
  post '/contact'      => 'pages#contact'
  get  '/galeria'      => 'pages#gallery'
  get  '/localizacao'  => 'pages#localization'
end
