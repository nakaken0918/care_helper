Rails.application.routes.draw do

  devise_for :users
  root 'care_helper#index'

  resources :care_helper, only: [:index, :new, :cleate]
end
