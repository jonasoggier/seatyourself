class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  # around_filter :set_time_zone

  # def set_time_zone
  #   old_time_zone = Time.zone
  #   Time.zone = current_user.time_zone if logged_in?
  #   yield
  # ensure
  #   Time.zone = old_time_zone
  # end

  helper_method :current_user
end
