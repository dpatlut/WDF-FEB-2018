require "sinatra"
require "sinatra/activerecord"
#Dont forget to require your models
# require_relative './models/'


#The goal of the app is setup the following relationships for our classroom managment app.
#Classes have one instructor : one to one
#Classes have many students. Students have many classes : many to many
#Classes have many TAs : one to many

#Give each table atleast 2-3 properties. Remember to put the FK! Otherwise you wont be able to setup relationships!



set :database, {adapter: 'postgresql', database: 'relations'}

get '/' do 

end

#here we want to pull all students currently in a specific class
get '/class/:id' do

end