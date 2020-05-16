Rails.application.routes.draw do
  get 'ingredients/index'
  get 'ingredients/show'
  get 'products/index'
  get 'products/show'
  get 'companies/index'
  resources :companies, only: [:index, :show] do
    resources :products, only: [:index, :show]
  end

  resources :ingredients, only: [:index, :show]
end
