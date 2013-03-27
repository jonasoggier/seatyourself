class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
  	if session[:user_id]
    	@current_user ||= User.find(session[:user_id])
    end
  end

  def current_restaurant
  	if session[:restaurant_id]
    	@current_restaurant ||= Restaurant.find(session[:restaurant_id])
    end
  end

  helper_method :current_user, :current_restaurant
end
