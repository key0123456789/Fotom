Rails.application.routes.draw do
  resources :home, only: [:index, :show]
  resources :albums, only: [:index, :show]
  resources :books, only: [:index, :show, :new, :create]

  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }

  root 'home#index'
end
