Rails.application.routes.draw do
  get 'products/index'
  get 'products/activate', to: 'products#set_active_coupone'
  
  get 'users/index'

  mount EngineCart::Engine => '/cart'
  get '/orders', to: 'engine_cart/orders#index', as: :orders
  get '/orders/:id', to: 'engine_cart/orders#show', as: :order
  devise_for :users
  root to: 'products#index'
end
