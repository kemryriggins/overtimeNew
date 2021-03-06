require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Overtime
  class Application < Rails::Application
    config.load_defaults 5.1
    config.autoload_paths << Rails.root.join("lib")
    config.secret_key_base = ENV["SECRET_KEY_BASE"]
  end
end
