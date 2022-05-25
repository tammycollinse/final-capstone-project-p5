class RemoveEventsFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :events, :string
  end
end
