Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :orders
  resources :recipe
  resources :admin
  get '/outlines' => 'outlines#index'
  # root
  root 'outlines#index'
end
