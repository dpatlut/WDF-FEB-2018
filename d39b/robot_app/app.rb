require "sinatra"
require "sinatra/activerecord"
require_relative './models/Robot'

set :database, {adapter: 'postgresql', database: 'robotstuff'}

get '/robot' do 

    #Update
    # robot = Robot.find(6)
    # robot.update(name: 'THIS IS MY NEW NAME')


    @robotall = Robot.all
    erb :index
end