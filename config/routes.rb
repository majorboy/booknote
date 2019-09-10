Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root "top#index"
  resources :books do
    resources :notes
  end

  resources :users, only: [:new, :edit, :create, :update]
end
