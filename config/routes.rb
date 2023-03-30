Rails.application.routes.draw do
  resources :doctors
  resources :users
  resources :medical_records
  # resources :patients
  
   
  
  

  get "/patients/:patient_id/appointments", to: 'doctors#patient_appointments'
  get "/patients/:patient_id/medical_record", to: 'doctors#patient_medical_record'
  put "/patients/:patient_id/appointments/:id", to: 'appointments#update'
  
  post "/signup", to: "users#create"
  get "/activeuser", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get '/doc', to: 'doctors#show'
  get '/pat', to: 'patients#show'
end

