Rails.application.routes.draw do
  # resources :password_resets, only: [:new, :create, :edit, :update]
  resources :doctors
  resources :users
  resources :medical_records
  resources :patients
  
  get "/patients/:patient_id/appointments", to: 'doctors#patient_appointments'
  get "/patients/:patient_id/medical_record", to: 'doctors#patient_medical_record'
  put "/patients/:patient_id/appointments/:id", to: 'appointments#update'
  
  post "/signup", to: "users#create"
  get "/activeuser", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get '/doc', to: 'doctors#show'
  get '/pat', to: 'patients#show'
  post 'patients/:patient_id/doctors/:doctor_id/appointments', to: 'appointments#create_appointment'
  # get '/password_reset/new', to: 'password_reset#new'
  # post '/password_reset', to: 'password_reset#create'
  # get '/password_reset/edit', to: 'password_reset#edit'
  # patch '/password_reset', to: 'password_reset#update'
end

