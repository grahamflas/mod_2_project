Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create]
  resources :sessions, only: [:show, :new, :create]
  #resources :users_sessions, only: [:create]

  get '/pick_users/:session_id/', to: 'sessions#pick_users', as: 'pick_users'
  get '/users_sessions/:session_id/:user_id', to: 'users_sessions#create', as: 'add_users'

  get '/login', to: 'accounts#login'
  post '/login', to: 'accounts#process_login'
end
