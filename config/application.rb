require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PokeyaruApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.app_generators.scaffold_controller = :scaffold_controller
    config.assets.initialize_on_precompile = false
    config.assets.compile = true
  end
end