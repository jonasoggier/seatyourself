class HomeController < ApplicationController
	def index
		@restaurant = Restaurant.all
		if params[:category] != nil
			
		end
	end
end
