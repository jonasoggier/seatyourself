class AddRelationshipsToCategories < ActiveRecord::Migration
  def change
  	change_table :categories do |t|
  		t.references :restaurant_type
  	end

  	add_index :categories, :restaurant_type_id
  end
end
