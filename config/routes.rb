Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'top#index'
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'
end
