class AddDistanceToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :distance, :float
  end
end
