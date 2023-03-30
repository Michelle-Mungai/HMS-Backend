class PatientsController < ApplicationController
  #Creates a new patient
  def create
    patient = Patient.create(patient_params)
    if patient.valid?
        render json: patient
    else
        render json: {message: patient.errors}, status: :unprocessable_entity
    end
  end
  # GET /patients
  def index
    patients = Patient.all
    render json: patients
  end
  # GET /patients/1
  def show
    patient = Patient.find(params[:id])
    render json: patient
  end
  # PATCH/PUT /patients/1
  def update
    patient = Patient.find(params[:id])
    patient.update(patient_params)
    if patient.valid?
      render json: patient, status: :created
    else
      render json: { message: patient.errors }, status: :unprocessable_entity
    end
  end
  # Deletes a patient
  def destroy
    patient = Patient.find(params[:id])
    patient.destroy
    render json: { message: "You have successfully quit the application"}
  end
  private
    # Only allow a list of trusted parameters through.
    def patient_params
      params.permit(:name, :date_of_birth, :contact_information, :user_id )
    end
end