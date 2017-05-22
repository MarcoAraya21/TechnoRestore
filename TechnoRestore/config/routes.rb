Rails.application.routes.draw do
  resources :details
  resources :sales
  resources :resources
  resources :reparations
  resources :c_products
  resources :products
  devise_for :users
  get 'welcome/index'
  root'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
