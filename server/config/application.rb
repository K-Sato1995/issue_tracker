require_relative 'boot'

require 'rails/all'
require "sprockets/railtie"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Backend
  class Application < Rails::Application
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'localhost:4020'
        resource '*', headers: :any, methods: [:get, :put, :post]
      end
    end
    config.load_defaults 5.2
  end
end
