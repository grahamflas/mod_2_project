class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :min_pace
      t.integer :min_miles_run
      t.integer :distance
      t.integer :min_num_of_sessions

      t.timestamps
    end
  end
end
