class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_of_birth, :contact_information
  has_one :medical_record
  has_many :doctors
end
