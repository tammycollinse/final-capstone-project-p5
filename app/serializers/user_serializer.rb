class UserSerializer < ActiveModel::Serializer
  attributes :id , :full_name , :phone_number , :email , :username 

  has_many :bookings
end
