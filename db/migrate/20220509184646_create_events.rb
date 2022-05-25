class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :attendance
      t.integer :likes
      t.string :venue

      t.timestamps
    end
  end
end
