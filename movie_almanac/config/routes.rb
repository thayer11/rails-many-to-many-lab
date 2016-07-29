Rails.application.routes.draw do
  get 'movies/index'

  get 'movies/show'

  get 'movies/new'

  get 'movies/create'

  get 'movies/destroy'

  get 'actors/index'

  get 'actors/show'

  get 'actors/new'

  get 'actors/create'

  get 'actors/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
