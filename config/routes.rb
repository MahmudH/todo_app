Rails.application.routes.draw do

  devise_for :users
  root 'pages#index'

  # get '/index', to: 'pages#index'

  resources :todos

end
