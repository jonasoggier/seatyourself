class RestaurantType < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :restaurants
  belongs_to :categories

end
