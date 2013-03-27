class SessionsController < ApplicationController
	
	def new
	end

	def create
		user = User.find_by_email(params[:email])
		restaurant = Restaurant.find_by_email(params[:email])

		if user
			if user && user.authenticate(params[:password])
				session[:user_id] = user.id
				redirect_to user, :notice => "Logged in!"
			else
				flash.now[:alert] = "Invalid email or password"
				render 'users/new'
			end
		elsif restaurant
			if restaurant && restaurant.authenticate(params[:password])
				session[:restaurant_id] = restaurant.id
				redirect_to restaurant, :notice => "Logged in!"
			else
				flash.now[:alert] = "Invalid email or password"
				render 'restaurants/new'
			end
		end
	end

	def destroy
		session[:user_id] = nil
		session[:restaurant_id] = nil
		redirect_to root_path, :notice => "Logged out!"
	end
end
