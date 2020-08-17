Rails.application.routes.draw do
  devise_for :users
  root 'events#index'
  resources :events do
  	resources :attendances, only: [:new, :create, :index]
  end
  resources :users, only: [:show, :edit, :update]
  namespace :admin do 
  	root 'admin#index'
  	resources :event_submissions, only: [:show, :index, :edit, :update]
  end
end
