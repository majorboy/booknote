Rails.application.routes.draw do
  root "top#index"
  resources :books
  resources :users, only: [:new, :edit, :create, :update]
end
