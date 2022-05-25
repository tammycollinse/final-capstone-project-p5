Rails.application.routes.draw do
  resources :bookings
  
  resources :events
  get "/events/category/:category" , to: "events#show_category"

  resources :users

  post "/login" , to: "sessions#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/me" , to: "users#show"

  delete "/logout" , to: "sessions#destroy"

  post "/signup" , to: "users#create"

  # Defines the root path route ("/")
  # root "articles#index"
end
