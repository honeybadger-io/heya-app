Rails.application.routes.draw do
  resource :user, only: [:new, :create]

  get "thanks", to: "users#thanks"

  root to: "users#new"
end
