Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  resources :images
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "charges#new"
end
