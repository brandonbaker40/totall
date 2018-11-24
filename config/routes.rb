Rails.application.routes.draw do
  get  '/about',     to:   'static_pages#about'
  get  '/contact',   to:   'static_pages#contact'
  get  '/help',      to:   'static_pages#help'

  get   '/signup',    to:   'users#new'
  post  '/signup',    to:   'users#create'

  get   '/login',     to:   'sessions#new'
  post  '/login',     to:   'sessions#create'
  get   '/logout',    to:   'sessions#destroy'

  resources :categories
  resources :users do
    resources :accounts do
      resources :balances
    end
  end

  root  'static_pages#home'
end
