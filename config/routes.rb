# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }
  root 'dashboard#index'
  get 'about', to: 'dashboard#about'
end
