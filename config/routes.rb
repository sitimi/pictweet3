Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets 
  resources :users, only: :show
  resources :tweet do
    resources :comments, only:create
  end
end
