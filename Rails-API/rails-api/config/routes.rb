Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #Movie Routes
  # resources :movies
  # get '/movies-ajax', to: 'movies#ajax'

  #This is testing the params functionality
  # get '/movies-ajax/:id', to: 'movies#ajax'


  #Auth Routes
  #Linking our routes to controller actions
  get '/instagram', to: 'instagram#index'
  get '/instagram/auth', to: 'instagram#auth'
  get '/auth/callback', to:'instagram#callback'
  get '/most_recent', to:'instagram#most_recent'

  root "instagram#index"
end
