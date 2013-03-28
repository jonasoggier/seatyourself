class DroppingRestaurantTypeId < ActiveRecord::Migration
  def change
  	remove_column :categories, :restaurant_type_id
  	remove_column :restaurants, :restaurant_type_id
  end
end
