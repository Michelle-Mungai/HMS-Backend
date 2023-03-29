class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  validates :appointment_date, :reason, :diagnosis, :prescription, presence: true
  validates :reason, :diagnosis, :prescription, length: { maximum: 1000 }
end
