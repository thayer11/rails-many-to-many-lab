Rails.application.routes.draw do
  get '/movies', to: "movies#index"
  
  get '/actors', to: 'actors#index'
  
  get '/actors/:id', to: 'actors#show'
  
  get '/movies/:id', to: 'movies#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
