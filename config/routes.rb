Rails.application.routes.draw do
  resources :sessions,only: [:new,:create,:destroy]
  get '/signup', to: 'users#new'
get '/login', to: 'sessions#new'
post '/login',to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
resources :attendances
resources :users,only: [:new,:create,:show]
resources :events
root to: 'events#index'
end
