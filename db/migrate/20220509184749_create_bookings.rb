class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.string :user_belongs_to
      t.string :date_time

      t.timestamps
    end
  end
end
