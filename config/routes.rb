Rails.application.routes.draw do
  get 'posts/index'
  root to: 'homes#index'
  resources :posts
  end
