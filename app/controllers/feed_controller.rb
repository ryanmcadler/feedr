
class FeedController < ApplicationController

  def index

    twitter_client = Twitter::REST::Client.new do |config|
      config.consumer_key = Feedr::Application::TWITTER_CONSUMER_KEY
      config.consumer_secret = Feedr::Application::TWITTER_CONSUMER_SECRET
      config.oauth_token = Feedr::Application::TWITTER_OAUTH_TOKEN
      config.oauth_token_secret = Feedr::Application::TWITTER_TOKEN_SECRET
    end
    @tweets = twitter_client.user_timeline(Feedr::Application::TWITTER_HANDLE).first(5)

    twitter_photo = twitter_client.user(Feedr::Application::TWITTER_HANDLE).profile_image_url
    @twitter_photo_url = twitter_photo.scheme + "://" + twitter_photo.host + twitter_photo.path.gsub('_normal','')

    @instagramfeed = Instagram.user_recent_media(Feedr::Application::INSTAGRAM_USER_ID)

  end

end
