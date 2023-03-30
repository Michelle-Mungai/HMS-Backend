class DoctorSerializer < ActiveModel::Serializer
  attributes  :id, :name, :phone_number, :medical_specialties, :medical_license_number
  has_many :patients 
  
end
