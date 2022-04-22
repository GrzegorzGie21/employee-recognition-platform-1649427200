# frozen_string_literal: true

Rails.application.routes.draw do
  resources :kudos
  root 'kudos#index'

  devise_for :employees

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
