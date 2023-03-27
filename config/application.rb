# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

# BestClip - provides namespace for application
module BestClip
  # Application - executes all railties & engines initializers
  class Application < Rails::Application
    config.load_defaults 7.0
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
