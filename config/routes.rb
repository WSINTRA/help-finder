Rails.application.routes.draw do
  resources :facility_services
  resources :service_types
  resources :services
  resources :facilities
  resources :user_comments
  resources :comments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
