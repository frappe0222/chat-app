Rails.application.routes.draw do
  devise_for :users
  root "rooms#index"
  resources :users, only: [:edit, :update]
<<<<<<< HEAD
<<<<<<< HEAD
  resources :rooms, only: [:new, :create] do
   resources :messages, only: [:index, :create]

  end
=======
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
 end
>>>>>>> 29b34bbd07255a58ae195cf0e2bfd2fa51327a48
=======
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
 end
>>>>>>> 29b34bbd07255a58ae195cf0e2bfd2fa51327a48
end