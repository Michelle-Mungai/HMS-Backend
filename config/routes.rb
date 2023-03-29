Rails.application.routes.draw do
  
  resources :doctors
  resources :users  
  resources :medical_records
  resources :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
