require "sinatra"
require "sinatra/activerecord"
require_relative './models/Cat'
require_relative './models/Owner'

set :database, {adapter: 'postgresql', database: 'catsowners'}


get '/' do 
    @cats = Cat.all()
    erb :index
end