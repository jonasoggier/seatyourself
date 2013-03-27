class AddRelationshipsToReservations < ActiveRecord::Migration
  def change
  	change_table :reservations do |t|
  		t.references :user
  		t.references :timeslot
  	end

  	add_index :reservations, :user_id
  	add_index :reservations, :timeslot_id
  end
end
