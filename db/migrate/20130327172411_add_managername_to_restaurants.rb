class AddManagernameToRestaurants < ActiveRecord::Migration
  def change
  	add_column :restaurants, :email, :string
  	add_column :restaurants, :manager_name, :string
  	add_column :restaurants, :password_digest, :string
  end
end
