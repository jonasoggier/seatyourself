class Categories < ActiveRecord::Base
  attr_accessible :name

  has_many :restaurants, through: :restaurant_types

end
