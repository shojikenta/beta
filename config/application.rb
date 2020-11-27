require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BetaApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.generators do |generator|
      generator.test_framework :rspec,
                       fixtures: true,
               controller_specs: true,
                   helper_specs: false,
                  routing_specs: false
      generator.fixture_replacement :factory_bot, dir: "spec/factories"
    end
  end
end
