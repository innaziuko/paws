Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :spaces do
    collection do
      get :all
    end
    resources :bookings, only: %i[create destroy]
  end
  # resources :spaces do
  #   resources :bookings, only: %i[create destroy]
  # end
  resources :bookings, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
