Rails.application.routes.draw do


  resources :detail_movements
  resources :header_movements
  resources :detail_order_of_works
  resources :header_order_of_works
  resources :user_stores
  resources :user_types
  resources :document_types
  resources :movement_types
  resources :providers
  resources :products
  resources :stores
  resources :companies
 
  devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }
  
   root 'bienvenido#index'
   get 'menuprincipal/menuprincipal'

  #root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
