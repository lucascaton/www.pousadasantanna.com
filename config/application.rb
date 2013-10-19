require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(:default, Rails.env)

module PousadaSantanna
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = 'pt-BR'
  end
end
