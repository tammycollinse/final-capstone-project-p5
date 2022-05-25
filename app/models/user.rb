class User < ApplicationRecord
    has_secure_password

    has_many :bookings , dependent: :destroy 
    has_many :events , through: :bookings


    #need to fix the format validation of the phone number 
    validates :full_name ,presence: true
    validates :username , uniqueness: true
    validates :email , format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true , uniqueness: true

end
