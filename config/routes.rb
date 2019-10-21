Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create]
  resources :sessions, only: [:show, :new, :create]
end
