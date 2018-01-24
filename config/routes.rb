Rails.application.routes.draw do
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "appointments#index"
 
  # routes for appointment
  get "/appointments",to: "appointments#index"
  get "/appointments/new",to: "appointments#new",as: :new_appointment
  post "/appointments",to: "appointments#create"
  get "/appointments/:id",to: "appointments#show",as: :appointment

  # routes for patient
  get "/patients",to: "patients#index"
  get "/patients/new",to: "patients#new",as: :new_patient
  post "/patients",to: "patients#create"
  get "/patients/:id",to: "patients#show",as: :patient
  get "/patients/:id/appointments",to: "patients#appointments",as: :patient_appointments
  get "/patients/:id/appointments/new",to: "patients#new_appointment",as: :new_patients_appointment
  # routes for physician
  get "/physicians",to: "physicians#index"
  get "/physicians/new",to: "physicians#new",as: :new_physician
  post "/physicians",to: "physicians#create"
  get "/physicians/:id",to: "physicians#show",as: :physician
  get "/physicians/:id/appointments",to: "physicians#appointments",as: :physician_appointments
  get "/physicians/:id/appointments/new",to: "physicians#new_appointment",as: :new_physicians_appointment


end
