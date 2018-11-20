Rails.application.routes.draw do
  get 'update/index'
  get 'welcome/index'

  resources :accounts do
    resources :balances
  end

  resources :update

  root 'welcome#index'
end
