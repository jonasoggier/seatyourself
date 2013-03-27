class AddRelationshipsToRestaurantTypes < ActiveRecord::Migration
  def change
  	change_table :restaurant_types do |t|
  		t.references :restaurant
  		t.references :category
  	end

  	add_index :restaurant_types, :restaurant_id
  	add_index :restaurant_types, :category_id
  end
end
