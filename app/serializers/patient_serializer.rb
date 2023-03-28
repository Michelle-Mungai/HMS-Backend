class PatientSerializer < ActiveModel::Serializer
  attributes :id, :username, :date_of_birth, :contact_information
end
