Gmapp::Application.routes.draw do
  devise_for :users
  resources :users do
    get :ads
  end
  resources :ads
  resources :transactions
  root 'pages#home'
end
