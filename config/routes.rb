Rails.application.routes.draw do
  root to:"simples#index"
  resources :simples
end
