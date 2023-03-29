class PatientsController < ApplicationController
  before_action :set_patient, only: %i[ show update destroy ]

  def create
    patient = Patient.create(patient_params)
    if patient.valid?
        session[:patient_id] = patient.id
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
    patient = Patient.includes(:doctors).find(params[:id])
    render json: patient, include: :doctors
  end

  # POST /patients
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created, location: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
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

  # DELETE /patients/1
  def destroy
    @patient.destroy
  end

  private

    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:username, :email, :password, :date_of_birth, :contact_information)
    end
end
