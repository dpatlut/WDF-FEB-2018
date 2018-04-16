require 'sinatra'
require 'rubyjokes'

get '/' do 
    erb :index
end

#Figure out how to pass a local that is nil becuase we get an error with the template
post '/postroute' do 
    joketype = params[:joketype]
    joke = RubyJoke.new
    @xyz = joke.get_joke({limitTo: [joketype]})
    erb :index
    # erb :index, :locals => {:joke => xyz}
end