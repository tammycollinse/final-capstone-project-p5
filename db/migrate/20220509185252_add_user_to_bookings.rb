class AddUserToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :bookings, :string
    add_reference :bookings, :user, null: false, foreign_key: true
  end
end
