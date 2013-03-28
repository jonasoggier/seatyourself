class Reservation < ActiveRecord::Base
  attr_accessible :user

  belongs_to :user
  belongs_to :timeslots


end
