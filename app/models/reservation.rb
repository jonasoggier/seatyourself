class Reservation < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :users
  belongs_to :timeslots

end