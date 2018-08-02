Rails.application.routes.draw do
  root "static_pages#home"
  get "/signup", to: "users#new", as: "new_user"
  get "/signin", to: "sessions#new", as: "new_session"
  resources :users, only: [:index, :create, :show]
  resources :sessions, only: [:create, :destroy]
  resources :concerts
  resources :tickets
end
