require "sinatra"
require "sinatra/activerecord"
require_relative './models/user'

set :database, {adapter: 'postgresql', database: 'sessionprac'}
enable :sessions
#Be aware there is the issue with sessions and shotgun/reloader, since they reload our app everytime
#Apparently doing something like : set :session_secret, "password_security" fixs it?
#Not sure why yet. 


get '/signup' do
    erb :'/signup'
end

get '/login' do
    erb :'/login'
end

get '/profile' do
    @user = User.find(session[:id])
    erb :profile
end

get '/someotherplace' do
    @user = User.find(session[:id])
    erb :randomplace
end

get '/logout' do
    #Clear all sessions  
    session.clear
    #You can also just set the session to nil like this : session[:id] = nil
    redirect '/login'
end

post '/user/login' do 
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user != nil
        session[:id] = @user.id
        erb :profile
    else   
        #Could not find this user. Redirecting them to the signup page
        redirect '/signup'
    end 
end




post '/user/new' do 
    #Creating a new user based on the values from the form
    @newuser = User.create(name: params[:name], email: params[:email], password: params[:password])
    #Setting the session with key of ID to be equal to the users id
    #Essentialy this "Logs them in"
    session[:id] = @newuser.id
    redirect '/profile'
end






private 
#Potentially useful function instead of checking if the user exists
def user_exists?
    (session[:id] != nil) ? true : false
end

def current_user
    User.find(session[:id])
end