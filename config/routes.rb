Rails.application.routes.draw do
  root "static_pages#home"
  get "/signup", to: "users#new", as: "new_user"
  get "/signin", to: "sessions#new", as: "new_session"
  post "/signin", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users, only: [:index, :create, :show]
  resources :concerts
  resources :tickets
end
