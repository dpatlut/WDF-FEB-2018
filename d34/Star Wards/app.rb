require 'sinatra'
require 'swapir'

get '/' do  
    @x = Swapir.get_all_people()
    erb :index
end