require 'sinatra'

get '/' do 
    erb :index
end

post '/postroute' do 
    puts params
end