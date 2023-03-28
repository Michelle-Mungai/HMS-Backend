class Patient < ApplicationRecord
  has_one :medical_record
end
