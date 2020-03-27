# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: [:new, :create] do
    resource :confirmation, only: [] do
      get :create
    end
  end

  get "thanks", to: "users#thanks"

  root to: "users#new"
end
