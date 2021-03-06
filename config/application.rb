require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MandaratApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.generators do |g|
      # css,jsのファイルは作成せず
      g.assets false
      # コントローラー作成時にconfig/routes.rbが書き換えられないようにする。
      g.skip_routes false
      # テストファイルは作成せず
      g.test_framework false
      # ヘルパーファイルも作成せず
      g.helper false
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.time_zone = 'Tokyo'
  end
end
