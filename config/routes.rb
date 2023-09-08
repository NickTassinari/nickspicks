Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'
  get '/movies', to: 'movies#index'
  get '/facts', to: 'facts#index'
end
