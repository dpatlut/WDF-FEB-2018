require 'sinatra'
require 'rubyjokes'

get '/' do 
    'hello world'
end

get '/jokes/:joke' do 
    joketype = params[:joke]
    joke = RubyJoke.new
    if joketype == "nerdy"
        @joke = joke.get_joke({limitTo: ['nerdy']})
    elsif joketype == "nsfw"
        @joke = joke.get_joke({limitTo: ['explicit']})
    else 
        'Try again'
    end
    erb :jokes
end

get '/surprise' do 
    'sdssdsddsl'
end