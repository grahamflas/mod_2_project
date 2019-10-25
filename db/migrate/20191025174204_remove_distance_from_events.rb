class RemoveDistanceFromEvents < ActiveRecord::Migration[6.0]
  def change

    remove_column :events, :distance, :integer
  end
end
