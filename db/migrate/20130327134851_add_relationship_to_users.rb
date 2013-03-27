class AddRelationshipToUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.references :reservation
  	end

  	add_index :users, :reservation_id
  end
end
