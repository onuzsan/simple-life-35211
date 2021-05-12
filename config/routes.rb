Rails.application.routes.draw do
  devise_for :users
  root to:"simples#index"
  resources :simples
  post 'simples', to: 'simples#create'
end
