Rails.application.routes.draw do
  # get 'users/new'

  # get 'users/create'

  # get 'users/show'

  root 'site#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  get "/profile", to: "users#show", as: :profile
  get "/signup", to: "users#new"

  resources :users, only: [:new, :create]
end
