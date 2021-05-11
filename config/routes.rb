Rails.application.routes.draw do
  devise_for :users
  root to:"simples#index"
  resources :simples
end
