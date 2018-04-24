require "sinatra"
require "sinatra/activerecord"
require_relative './models/Cat'
require_relative './models/Owner'

set :database, {adapter: 'postgresql', database: 'catsowners'}


get '/' do 
    @cats = Owner.find(1).cats
    puts 'blah'
    erb :index
end