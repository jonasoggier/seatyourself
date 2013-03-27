class RemoveIncorrectFromRestaurants < ActiveRecord::Migration
  def up
  	remove_column :restaurants, :timeslot_id
  end

  def down
  	add_column :restaurants, :timeslot_id
  end
end
