require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module PousadaSantanna
  class Application < Rails::Application
    config.time_zone           = 'Brasilia'
    config.i18n.default_locale = 'pt-BR'

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.test_framework :rspec, fixture: false, views: false
    end
  end
end
