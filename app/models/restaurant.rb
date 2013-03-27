class Restaurant < ActiveRecord::Base
  attr_accessible :city, :description, :district, :name, :street_address, :tables, :password, :password_confirmation, :email, :manager_name

  validates :manager_name, :description, :street_address, :tables, :district, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true, :uniqueness => true
  validates_presence_of :password, :on => :create

  has_many :timeslots
  has_many :categories, through: :restaurant_types
  
  has_secure_password

end