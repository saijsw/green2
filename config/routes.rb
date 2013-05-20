Gmapp::Application.routes.draw do
  devise_for :users
  resources :users
  resources :ads
  resources :transactions
  root 'pages#home'
end
