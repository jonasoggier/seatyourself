class RemoveColumnsFromCategoriesRestaurants < ActiveRecord::Migration
  def change
  	remove_column :categories_restaurants, :created_at
  	remove_column :categories_restaurants, :updated_at
  end
end
