class MedicalRecord < ApplicationRecord

  validates :medical_history, {
    presence: true,
    length: {minimum: 30}
  }
  validates :diagnoses, presence: true
  validates :treatment, presence: true

  belongs_to :patient
end
