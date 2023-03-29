class Patient < ApplicationRecord
  has_secure_password

  validates :username, {
    presence: true,
    length: {minimum: 5, maximum: 30}
  }
  validates :email, presence: true
  validates :password, presence: true
  validates :date_of_birth, presence: true
  validates :contact_information, presence: true
  
  has many :appointments
  has many :doctors, through: :appointments
  has_one :medical_record
end
