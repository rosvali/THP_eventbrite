Rails.application.routes.draw do
  devise_for :users
  root 'events#index'
  resources :events do
  	resources :attendances, only: [:new, :create, :index]
  end
  resources :users, only: [:show, :edit, :update]
end
