Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create]
  resources :sessions, only: [:show, :new, :create]
  resources :users_sessions, only: [:create]

  post '/pick_users/:id', to: 'sessions#pick_users', as: 'pick_users'
end
