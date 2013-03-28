class Restaurant < ActiveRecord::Base
  attr_accessible :city, :description, :district, :name, :street_address, :tables, :manager

  validates :description, :street_address, :tables, :district, :presence => true
  validates :name, :presence => true, :uniqueness => true

  has_many :timeslots
  has_and_belongs_to_many :categories
  belongs_to :manager, :class_name => 'User'

end