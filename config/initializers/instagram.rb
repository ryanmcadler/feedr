require "instagram"

Instagram.configure do |config|
  config.client_id = Feedr::Application::IG_CLIENT_ID
  config.access_token = Feedr::Application::IG_ACCESS_TOKEN
end
