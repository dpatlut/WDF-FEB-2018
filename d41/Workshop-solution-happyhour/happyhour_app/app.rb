require "sinatra"
require "sinatra/activerecord"
require_relative './models/Attendee'

set :database, {adapter: 'postgresql', database: 'happyhour'}

#Basic CRUD Operations in Sinatra w/ AR

#Get Details on all attendees (R)
get '/attendees' do 
    @attendees = Attendee.all
    erb :index
end

#Get Details on specific attendee (R)
get '/attendees/:id' do
    @specific_attendee = Attendee.find(params[:id])
    erb :show
end


#Render form for creating a new attendee (C)
get '/attendees/new/create' do
    erb :new
end

#Create new attendee from /new route (C)
post '/attendees/new' do
    Attendee.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], likes_beer: params[:likes_beer])
    redirect '/attendees'
end
  

#Render form for editing a new attendee (U)
get '/attendees/:id/edit' do 
    @specific_attendee = Attendee.find(params[:id])
    erb :edit
end


#Edit attendee from /id/edit route (U)
put '/attendees/:id' do
    @specific_attendee = Attendee.find(params[:id])
    @specific_attendee.update(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], likes_beer: params[:likes_beer])
    redirect '/attendees'
end
  
#Delete Attendee (D)
delete '/attendees/:id' do
    Attendee.destroy(params[:id])
    redirect '/attendees'
end