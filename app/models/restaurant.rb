class Restaurant < ActiveRecord::Base
  attr_accessible :city, :description, :district, :name, :street_address, :tables, :manager, :opens_at, :closes_at

  validates :description, :street_address, :tables, :district, :opens_at, :closes_at, :presence => true
  validates :name, :presence => true, :uniqueness => true

  has_many :timeslots
  has_and_belongs_to_many :categories
  belongs_to :manager, :class_name => 'User'

  def generate_two_weeks_of_datetimes(restaurant)
  		@date = Date.today
   		date_options = {}
    	14.times do
    		@datetime_option = DateTime.new(@date.year, @date.mon, @date.mday, restaurant.opens_at, 0, 0, '-4')
      		until @datetime_option.hour == restaurant.closes_at
        		date_options["#{@datetime_option.strftime("%A, %B %-d at %-I:%M %p")}"] = @datetime_option
        		@datetime_option += 1.hours
      		end
      		@date += 1.days
    	end
    	date_options
	end
end