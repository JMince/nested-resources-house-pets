Rails.application.routes.draw do
  root 'houses#index'

  resources :houses, only: [:show] do
    resources :pets, only: [:index, :new, :create]
  end
end
