class Patient < ApplicationRecord
  has_secure_password
  
  has_one :medical_record
end
