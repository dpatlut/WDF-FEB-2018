require 'sinatra'
require "sinatra/activerecord"
require_relative './models/Cat'

set :database, {adapter: 'postgresql', database: 'catapp'}

get '/cats' do 
    @all_my_cats = Cat.all
    erb :index
end