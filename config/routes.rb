
Rails.application.routes.draw do
  # Pour les Login/logout des Users
  devise_for :users
  # devise_scope :user do
  #   get'CHECK later pour Login/logout'
  # end

  # Page d'accueil ?
  root to: "pages#home"

  # Users :
  resources :users, only: [:show, :edit, :update]
  # actionsItems
  resources :items do
    resources :bookings, only: [:create]
  end

  # Bookings
  resources :bookings, only: [:index, :show, :update, :create] do
    patch 'reviews', to: 'reviews#update'
  end
end
