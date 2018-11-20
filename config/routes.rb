Rails.application.routes.draw do
  get 'update/index'
  get 'welcome/index'

  resources :accounts do
    resources :balances
  end

  root 'welcome#index'
end
