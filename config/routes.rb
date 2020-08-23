Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :users, only: [:edit, :update] do
    resources :posts
  end
end
