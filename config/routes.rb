Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  root 'home#index'
  post 'create' => 'home#create', as: :links
  get ':id' => 'home#redirect', as: :links_show
  delete ':id' => 'home#delete', as: :links_delete

  get 'not_found' => 'application#not_found'
end
