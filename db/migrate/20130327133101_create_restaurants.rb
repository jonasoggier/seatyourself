class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street_address
      t.string :district
      t.string :city
      t.integer :tables
      t.text :description

      t.timestamps
    end
  end
end
