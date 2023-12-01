Rails.application.routes.draw do
  # get 'mother_pets/index'
  # get 'mother_pets/show'
  # get 'mother_pets/new'
  # get 'mother_pets/edit'
  # get 'father_pets/index'
  # get 'father_pets/show'
  # get 'father_pets/new'
  # get 'father_pets/edit'
  # get 'breeding_pets/index'
  # get 'breeding_pets/show'
  # get 'breeding_pets/new'
  # get 'breeding_pets/edit'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"

  resources :breeding_pets
  resources :father_pets
  resources :mother_pets

end
