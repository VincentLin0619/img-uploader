Rails.application.routes.draw do
  root "products#index"
  resources :products
  resources :img, only: [:new, :create, :update, :destroy]
end
