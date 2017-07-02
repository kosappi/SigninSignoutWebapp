Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  root 'top#index'
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'
  get '/profile', to: 'users#show'
  get '/profile/edit', to: 'users#edit'
end
