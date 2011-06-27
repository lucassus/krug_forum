require 'inherited_resources'
require 'jquery-rails'

module KrugForum
  class Engine < Rails::Engine
    isolate_namespace KrugForum

    config.generators do |g|
      g.javascripts false
      g.stylesheets false
      g.helper false
      g.integration_tool false
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => "spec/support/factories"
    end
  end
end
