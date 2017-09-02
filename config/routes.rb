Rails.application.routes.draw do
  resources :users
  resources :prescriptions
  resources :diagnoses
  resources :appointments
  resources :doctors
  resources :clinic_histories
  resources :pacients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
