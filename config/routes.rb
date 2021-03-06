Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "dashboard", to: "pages#dashboard"

  resources :users, only: [:show]

  resources :superstars do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [ :create ]
  end
  resources :bookings, only: [:show, :destroy]
end
