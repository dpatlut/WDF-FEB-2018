class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # This is my callback URL that I want instagram to send a code back too
  CALLBACK_URL = "http://localhost:3000/auth/callback"

  #This is the Instagram Gems implementation of setting up our variables
  Instagram.configure do |config|
    config.client_id = ENV['INSTA_CLIENT_KEY']
    config.client_secret = ENV['INSTA_CLIENT_SECRET']
    # For secured endpoints only
    #config.client_ips = '<Comma separated list of IPs>'
  end

end
