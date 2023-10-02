Rails.application.routes.draw do
  devise_for :users
  root to: "cottages#index"
  resources :cottages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
