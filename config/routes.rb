Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  resources :companies, only: [:index, :show]
  resources :ingredients, only: [:index, :show]
end
