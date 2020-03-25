Rails.application.routes.draw do
  devise_for :users
  resources :tweets, except: %i[edit update]
  root to: 'welcome#show'
end
