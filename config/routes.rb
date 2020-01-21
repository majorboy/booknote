Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root "top#index"
  resources :books, except: [:update,:destroy] do
    resources :notes
    resources :thoughts
  end

  resources :users, only: [:new, :edit, :create, :update]

  resources :genres, except: [:update,:destroy]
end
