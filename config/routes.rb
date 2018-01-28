# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'home#index'
  get :dashboard, to: 'dashboard#index'
  resources :maps, only: %w[index new show]
end
