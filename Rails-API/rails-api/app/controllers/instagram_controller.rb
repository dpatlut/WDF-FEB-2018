class InstagramController < ApplicationController

    #This is our homepage to render the button to start the auth process
    def index
    end

    #This is the method that gets hit with the link tag on the home page.
    #This handles redirecting to instagrams url. 
    #Make sure your callback url matches the one you registered for your app.
    def auth
        redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
    end

    #This is the method that handles when instagram sends back the auth token
    #This handles exchanging our auth token for a access token
    #After this method we will be able to call instagram data for a user
    #We save the access token to a session
    def callback
        response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
        session[:access_token] = response.access_token
        redirect_to "/most_recent"
    end

    #This is the route that handles displaying the most recent data. We pass
    #@client to our template called most_recent.html.erb
    def most_recent
        @client = Instagram.client(:access_token => session[:access_token])
        #puts client
    end
end