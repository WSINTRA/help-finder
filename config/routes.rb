Rails.application.routes.draw do
  resources :facility_services
  resources :service_types
  resources :services
  resources :facilities
  resources :user_comments
  resources :comments
  resources :users
  resources :analytics


  get "/", to: "homes#index"
  get "/sessions/new", to: "sessions#new", as: "login" #login_path
  delete "/sessions", to: "sessions#destroy"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
