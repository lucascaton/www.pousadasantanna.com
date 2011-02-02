ActionController::Routing::Routes.draw do |map|
  map.accommodation '/accommodation', :controller => 'static_content', :action => 'accommodation'
  map.contact '/contact', :controller => 'static_content', :action => 'contact'
  map.gallery '/gallery', :controller => 'static_content', :action => 'gallery'
  map.localization '/localization', :controller => 'static_content', :action => 'localization'
  
  map.root :controller => :static_content, :action => :index
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

ActionController::Routing::Translator.i18n('pt-BR')
