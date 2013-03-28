class Timeslot < ActiveRecord::Base
  attr_accessible :start_time

  has_many :reservations
  belongs_to :restaurant

end
