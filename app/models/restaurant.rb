class Restaurant < ActiveRecord::Base
  attr_accessible :city, :description, :district, :name, :street_address, :tables

  has_many :timeslots
  has_many :categories, through: :restaurant_types

end
