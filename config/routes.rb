# frozen_string_literal: true

Rails.application.routes.draw do
  resource :about, only: :show
  resource :home, only: :show

  root "homes#show"

  namespace :admin do
    resources :posts
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
