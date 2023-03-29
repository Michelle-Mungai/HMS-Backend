class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    validates :name, presence: true
    validates :contact_information, presence: true
    validates :medical_specialties, presence: true
end

