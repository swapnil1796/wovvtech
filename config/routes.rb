Rails.application.routes.draw do
  root to: 'tweets#index'
  devise_for :users
  resources :tweets, except: %i[edit update]
  resources :users, only: :show
  resources :followers, only: %i[new create destroy]
end
