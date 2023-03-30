class User < ApplicationRecord
    has_secure_password
    
    enum options: [ :DOCTOR, :PATIENT ]

    validates :username, { 
        presence: true 
    } 

    validates :email, {
        presence: true
    }
    has_many :doctors
    has_many :patients
end
