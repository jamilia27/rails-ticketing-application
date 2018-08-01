Rails.application.routes.draw do
  root "static_pages#home"
  resources :users
  resources :concerts
  resources :tickets
end
