Rails.application.routes.draw do
  devise_for :users
  root 'minibrog#index'
  resources :minibrog 
end
