class MedicalRecordsController < ApplicationController

  # PATCH/PUT /medical_records/1
  def update
    medical_record = MedicalRecord.find(params[:id])
    medical_record.update(medical_record_params)
    if medical_record.valid?
      render json: medical_record, status: :ok
    else
      render json: { message: medical_record.errors }, status: :unprocessable_entity
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def medical_record_params
      params.require(:medical_record).permit(:patient_id, :medical_history, :diagnoses, :treatment)
    end
end
