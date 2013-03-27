class Restaurant < ActiveRecord::Base
  attr_accessible :city, :description, :district, :name, :street_address, :tables
end
