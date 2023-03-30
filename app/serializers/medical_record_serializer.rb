class MedicalRecordSerializer < ActiveModel::Serializer
  attributes :id, :medical_history, :diagnoses, :treatment

  belongs_to :patient
end
