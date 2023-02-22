Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :spaces
  resources :spaces do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
