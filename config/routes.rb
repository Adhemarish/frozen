Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: 'equipments#index'

  resources :bookings, only: :index

  resources :equipments, only: [:show] do
    resources :bookings, only: [:new, :create]
  end

  namespace :owner do
    resources :bookings, only: [:index]  do
      member do
        patch 'accept'
        patch 'decline'
      end
    end
    resources :equipments, only: [:index, :new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
