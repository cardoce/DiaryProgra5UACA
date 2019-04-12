Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  get 'welcome/index'
  get 'welcome/login'
  get 'welcome/profile'
  root 'sessions#new'
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
