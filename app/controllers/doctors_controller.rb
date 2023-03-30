class DoctorsController < ApplicationController
  # display all appointment
   def patient_appointments
     @appointments = Patient.find(params[:patient_id]).appointments
     render json: @appointments
   end

 # displays a specific patients medical record
   def patient_medical_record
     @medical_record = Patient.find(params[:patient_id]).medical_record
     render json: @medical_record
   end

   #find a given Doctor object
    def show
      @doctor = current_user.doctors
      render json: @doctor
    end
    
 end
 
 
 
 