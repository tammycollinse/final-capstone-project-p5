class Event < ApplicationRecord
    has_many :bookings, dependent: :destroy
    has_many :users , through: :bookings


    validates :name,     length: { minimum: 2 }
    validates :name, presence: true 
    validates :location , presence: true
    validates :description , presence: true
    validates :attendance , presence: true
    validates :likes , presence: true
    validates :venue , presence: true
    validates :price , presence: true
    validates :image, presence: true
    validates :category , presence: true
    validates :name , uniqueness: true 
    validates :attendance , numericality: {greater_than: 0 , less_than: 20000}
end
