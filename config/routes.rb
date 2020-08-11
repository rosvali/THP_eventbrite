Rails.application.routes.draw do
  devise_for :users
  root 'events#index'
  resources :event, only: [:show, :new, :create, :index]
  resources :user, only: [:show]
end
