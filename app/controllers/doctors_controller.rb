class DoctorsController < ApplicationController
   # view doctors
    def index
        doctors= Doctor.all 
        render json: doctors
    end
    
    #creating a new doctor
    def create
        doctor = Doctor.new(doctor_params)
      
        if doctor.save
          render json: doctor, status: :created, location: doctor
        else
          render json: doctor.errors, status: :unprocessable_entity
        end
      end
      
      private
      
      def doctor_params
        params.require(:doctor).permit(:name, :phone_number, :medical_specialties, :medical_license_number)
      end
      
end

