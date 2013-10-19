PousadaSantanna::Application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'pages#index'

  resources :photos

  get  '/acomodacoes'  => 'pages#accommodation'
  get  '/fale_conosco' => 'pages#contact_form', as: :contact_form
  post '/contact'      => 'pages#contact'
  get  '/galeria'      => 'pages#gallery'
  get  '/localizacao'  => 'pages#localization'
end
