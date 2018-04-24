require "sinatra"
require "sinatra/activerecord"

#Dont forget to require your models
require_relative './models/class'
require_relative './models/ta'
require_relative './models/instructor'
require_relative './models/student'


#The goal of the app is setup the following relationships for our classroom managment app.
#Classes have one instructor : one to one
#Classes have many students. Students have many classes : many to many
#Classes have many TAs : one to many

#Give each table atleast 2-3 properties. Remember to put the FK! Otherwise you wont be able to setup relationships!



set :database, {adapter: 'postgresql', database: 'relations'}


#We want to display the following :
#All students part of a specific class
#All instructors part of a class
#All tas part of a class
get '/class/:id' do
    #Do something here
    erb :class
end