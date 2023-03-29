class User < ApplicationRecord
    has_secure_password
    
    enum options: [ :DOCTOR, :PATIENT ]

    validates :username, { 
        presence: true 
    } 

    validates :email, {
        presence: true
    }
end
