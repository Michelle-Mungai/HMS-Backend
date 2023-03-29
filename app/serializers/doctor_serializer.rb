class DoctorSerializer < ActiveModel::Serializer
  attributes  :name, :phone_number, :medical_specialties, :medical_license_number
end
