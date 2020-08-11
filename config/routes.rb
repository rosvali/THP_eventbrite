Rails.application.routes.draw do
  devise_for :users
  root 'events#index'
  resources :events, only: [:show, :new, :create, :index]
  resources :users, only: [:show, :edit, :update]
end
