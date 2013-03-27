class Timeslot < ActiveRecord::Base
  attr_accessible :slot

  has_many :reservations
  belongs_to :restaurants

end
