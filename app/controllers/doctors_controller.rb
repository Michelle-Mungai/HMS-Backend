class DoctorsController < ApplicationController
   # view doctors
    def index
        doctors= Doctor.all 
        render json: doctors, each_serializer: DoctorSerializer
    end

    #creating a new doctor
    def create
        doctor = Doctor.create(doctor_params)
      
        if doctor.valid?
          render json: doctor, serializer: DoctorSerializer, status: :created
        else
          render json: { errors: doctor.errors.full_messages }, status: :unprocessable_entity
        end
      end
    #find a given Doctor object

      def show
        doctor = Doctor.find_by(id: params[:id])
        
        if doctor.present?
          render json: doctor, serializer: DoctorSerializer
        else
          render json: { error: "Doctor not found" }, status: :not_found
        end
      end

      #Update a given Doctor

      def update
        doctor = Doctor.find_by(id: params[:id])
      
        if doctor.update(doctor_params)
          render json: { message: "Doctor successfully updated", doctor: doctor }, status: :ok
        else
          render json: { errors: doctor.errors.full_messages }, status: :unprocessable_entity
        end
      end
      

      #delete method
      def destroy
        doctor = Doctor.find_by(id: params[:id])
      
        if doctor
          doctor.destroy
          render json: { message: "Doctor successfully destroyed" }, status: :ok
        else
          render json: { error: "Doctor not found" }, status: :not_found
        end
      end
      

          
           
      private
      
      def doctor_params
        params.require(:doctor).permit(:name, :phone_number, :medical_specialties, :medical_license_number)
      end
      
      
end

