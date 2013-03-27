class AddRelationshipsToTimeslots < ActiveRecord::Migration
  def change
  	change_table :timeslots do |t|
  		t.references :reservation
  		t.references :restaurant
  	end

  	add_index :timeslots, :reservation_id
  	add_index :timeslots, :restaurant_id
  end
end
