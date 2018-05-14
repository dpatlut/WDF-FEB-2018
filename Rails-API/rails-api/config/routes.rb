Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies

  get '/movies-ajax', to: 'movies#ajax'
  
  root "movies#index"
end
