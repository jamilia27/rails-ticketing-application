Rails.application.routes.draw do
  root "static_pages#home"
  get "/signup", to: "users#new", as: "new_user"
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/buy_ticket", to: "tickets#buyticket"
  resources :users, only: [:index, :create, :show]
  resources :concerts
end
