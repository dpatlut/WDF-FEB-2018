require "sinatra"
require "sinatra/activerecord"
#Dont forget to require your models
# require_relative './models/'

set :database, {adapter: 'postgresql', database: 'relations'}

get '/' do 

end