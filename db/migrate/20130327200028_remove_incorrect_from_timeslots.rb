class RemoveIncorrectFromTimeslots < ActiveRecord::Migration
  def change
  	remove_column :timeslots, :reservation_id
  end
end
