Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :spaces
  resources :spaces do
    resources :bookings, only: [:create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
