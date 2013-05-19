Gmapp::Application.routes.draw do
  resources :ads

  resources :transactions

  devise_for :users
  resources :users

  root 'pages#home'
end
