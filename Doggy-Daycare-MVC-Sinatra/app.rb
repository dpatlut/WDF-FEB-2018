require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/Dog'
require_relative './models/Owner'

# set :database, {adapter: 'postgresql', database: 'doggydaycare'}

get '/' do
  erb :index
end

get '/dogs' do
  @dogs = Dog.all()
  erb :dogs
end

get '/owners' do
  @owners = Owner.all()
  erb :owners
end

get '/owners/:id' do
  # @id = params[:id]
  @owner = Owner.find(params[:id])
  @owneddogs = @owner.dogs
  erb :owner
end