Rails.application.routes.draw do
  get 'users/new'

  get 'users/edit'

  root "top#index"
  resources :books
end
