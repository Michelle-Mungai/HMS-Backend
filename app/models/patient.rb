class Patient < ApplicationRecord

  validates :name, presence: true
  validates :date_of_birth, presence: true
  validates :contact_information, presence: true
  
  has_many :appointments
  has_many :doctors, through: :appointments
  has_one :medical_record
end
