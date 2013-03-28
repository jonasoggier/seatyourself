class RefactoringDatabase < ActiveRecord::Migration
  def change
  	rename_table :restaurant_types, :categories_restaurants
  	change_table :restaurants do |t|
  		t.remove :email
  		t.remove :manager_name
  		t.remove :password_digest
  		t.integer :manager_id
  	end
  	change_table :timeslots do |t|
  		t.remove :slot
  		t.datetime :start_time
  	end
  end
end
