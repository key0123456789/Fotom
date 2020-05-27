Rails.application.routes.draw do
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  # devise_for :users

  resources :home, only: %w[index, show]
  resources :album, only: %w[index, show]

  root 'home#index'
end
