Rails.application.routes.draw do
  devise_for :users
  root to:"simples#index"
  resources :simples do
    resources :comments, only: :create
  end
  get '/simples/category/:id', to: "simples#category"
end
