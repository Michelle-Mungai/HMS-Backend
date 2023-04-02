class DoctorsController < ApplicationController
  #  before_action :authorize?

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

   def create
    @doctor= current_user.doctors.create(doctor_params)
    if @doctor.valid?
        render json: @doctor
    else
        render json: {message: @doctor.errors}, status: :unprocessable_entity
    end
  end

  def index
    doctors = Doctor.all
    render json: doctors
  end


   #find a given Doctor object
    def show
      @doctor = current_user.doctors
      render json: @doctor
    end

  private

  def doctor_params
    params.permit(:name, :medical_license_number, :medical_specialties)
  end
    
 end
 
 
 
 