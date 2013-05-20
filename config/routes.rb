Gmapp::Application.routes.draw do
  devise_for :users
  resources :users
  resources :ads
  root 'pages#home'
end
