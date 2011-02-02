Pousadasantanna::Application.routes.draw do
  match '/' => 'static_content#index'
  match '/acomodacoes' => 'static_content#accommodation', :as => :accommodation, :method => 'get'
  match 'fale_conosco' => 'static_content#contact', :as => :contact, :method => 'get'
  match 'galeria' => 'static_content#gallery', :as => :gallery, :method => 'get'
  match 'localizacao' => 'static_content#localization', :as => :localization, :method => 'get'
end
