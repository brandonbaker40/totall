Rails.application.routes.draw do
  get 'users/new'
  get 'update/index'
  get 'welcome/index'

  resources :accounts do
    resources :balances
  end

  resources :users
  resources :categories
  resources :update

  root 'welcome#index'
end
