class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :bio, :options
  has_many :doctors
  has_many :patients
end
