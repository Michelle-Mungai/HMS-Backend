class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :appointment_date, :reason_for_visit
end
