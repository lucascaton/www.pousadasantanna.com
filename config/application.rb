require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(:default, Rails.env)

module PousadaSantanna
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = 'pt-BR'
    I18n.locale = config.i18n.locale = config.i18n.default_locale
    I18n.reload!

    config.generators do |g|
      g.test_framework :rspec, fixture: false, views: false
    end
  end
end
