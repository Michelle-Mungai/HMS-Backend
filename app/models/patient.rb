class Patient < ApplicationRecord

  validates :name, presence: true
  validates :date_of_birth, presence: true
  validates :contact_information, presence: true
  
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments, dependent: :destroy
  has_one :medical_record, dependent: :destroy
  belongs_to :user
end
