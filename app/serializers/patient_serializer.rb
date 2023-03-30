class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_of_birth, :contact_information

  has_many :doctors
  has_one :medical_record
  belongs_to :user
end
