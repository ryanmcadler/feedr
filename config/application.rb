require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Feedr
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    NAME = "Ryan McAdler"
    TWITTER_HANDLE = "ryanmcadler"
    GITHUB_HANDLE = "ryanmcadler"
    INSTAGRAM_HANDLE = "ryanmcadler"
    INSTAGRAM_USER_ID = 9316034
    BIO = "My name is Ryan McAdler. I'm a developer from Bend, Oregon. Geospatial application development, Ruby, and Javscript is my jam. I love the outdoors, photography, and spending time with friends and family. I don't really have time to blog, so this is my life through Instagram and tweets. <a href='https://github.com/ryanmcadler/feedr' target='_blank'>Feel free to clone/fork this app at Github</a>."

    TWITTER_CONSUMER_KEY = ""
    TWITTER_CONSUMER_SECRET = ""
    TWITTER_OAUTH_TOKEN = ""
    TWITTER_TOKEN_SECRET = ""

    IG_CLIENT_ID = ""
    IG_ACCESS_TOKEN = ""
  end
end
