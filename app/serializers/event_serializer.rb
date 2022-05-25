class EventSerializer < ActiveModel::Serializer
attributes :id , :name , :location , :description, :attendance, :likes , :venue , :price,  :image , :category


has_many :users , through: :bookings
end
