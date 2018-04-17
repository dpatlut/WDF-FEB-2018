require 'sinatra'

get '/' do
    puts ENV['WING_IT_GOOGLE']
    erb :index
end

#First scenerio. Get request with a "param"
get '/test/:id' do
    puts "HERE HERE"
    puts params
    #Would return whatever the id is
    #{"id"=>"1"}
    puts "HERE HERE"
end

#Second scenerio. Writing a route with params. No bueno
#Will get an error that /test does not exist.
#Cant think of situation where this would be appropriate 
get '/test?add=test&subtract=testtwo' do
    puts "HERE HERE"
    puts params
    puts "HERE HERE"
end

#third scenerio. Get request with a "param" but contacted via a form GET request on  home page 
#Submitting a form request to this route would generate a url like
#http://localhost:4567/human/david?joketype=nerdy
get '/human/:name' do
    puts "HERE HERE"
    puts params
    #Would return a hash with both the params of the url 
    #{"joketype"=>"nerdy", "name"=>"david"}
    puts "HERE HERE"
end

#fourth scenerio. Post request from a form and dynamic params in the URL
post '/class/:name' do 
    # puts request.body
    # puts request.params
    puts "HERE HERE"
    puts params
    #You will get both
    #{"joketype"=>"nerdy", "id"=>"1"}
    puts "HERE HERE"
end

