class AddRelationshipsToRestaurant < ActiveRecord::Migration
  def change
  	change_table :restaurants do |t|
  		t.references :timeslot
  		t.references :restaurant_type
  	end

  	add_index :restaurants, :timeslot_id
  	add_index :restaurants, :restaurant_type_id
  end
end
