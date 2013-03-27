class RemoveIncorrectFromUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :reservation_id
  end

  def down
  	add_column :users, :reservation_id
  end
end
