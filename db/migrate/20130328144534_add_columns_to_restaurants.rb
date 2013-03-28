class AddColumnsToRestaurants < ActiveRecord::Migration
  def change
  	change_table :restaurants do |t|
  		t.datetime :opens_at
  		t.datetime :closes_at
  	end
  end
end
