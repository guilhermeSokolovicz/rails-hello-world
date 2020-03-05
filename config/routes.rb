# frozen_string_literal: true

Rails.application.routes.draw do
  match '/users', to: 'users#index', via: 'get'
  resources :roles
  devise_for :users
  root to: 'home#index'
end
