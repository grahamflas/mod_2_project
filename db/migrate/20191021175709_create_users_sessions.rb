class CreateUsersSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :users_sessions do |t|
      t.integer :user_id
      t.integer :session_id

      t.timestamps
    end
  end
end
