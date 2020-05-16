Rails.application.routes.draw do
  resources :company, only: [:index, :show] do
    resources :products, only: [:index, :show]
  end
  
  resources :ingredients, only: [:index, :show]
end
