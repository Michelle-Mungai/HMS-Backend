class MedicalRecordSerializer < ActiveModel::Serializer
  attributes :id, :medical_history, :diagnoses, :treatment

  has_one :medical_record
  has_many :doctors
end
