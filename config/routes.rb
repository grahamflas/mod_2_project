Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create]
  resources :sessions, only: [:show, :new, :create]
  resources :events, only: [:index, :show]

  get '/pick_users/:session_id/', to: 'sessions#pick_users', as: 'pick_users'
  get '/users_sessions/:session_id/:user_id', to: 'users_sessions#create', as: 'add_users'
  get '/users_events/:event_id/:user_id', to: 'users_events#create', as: 'register_event'

  get '/login', to: 'accounts#login'
  post '/login', to: 'accounts#process_login'
  get '/logout', to: 'accounts#logout'
  
  delete '/users_sessions/:user_id/:session_id', to: 'users_sessions#destroy', as: 'users_session'
  delete '/users_events/:event_id/:user_id', to: 'users_events#destroy', as: 'unregister_event'
end
