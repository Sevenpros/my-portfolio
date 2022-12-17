# frozen_string_literal: true

Rails.application.routes.draw do
  resources :projects, only: %i[index show create destroy update] do
    resources :comments, only: %i[index create show destroy]
    resources :likes, only: %i[index create show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
