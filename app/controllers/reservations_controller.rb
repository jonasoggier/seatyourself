class ReservationsController < ApplicationController
	def create
		ts_params = params[:timeslot]
		ts_params['start_time'] = ts_params['start_time'].to_time
		# first_or_create does fancy stuff (look it up)
		@slot = Timeslot.where(ts_params).first_or_create!
		@restaurant = Restaurant.find(ts_params[:restaurant_id])

		if @slot.reservations.count < @restaurant.tables
			@slot.reservations.create(:user => current_user)
			redirect_to user_path(current_user), notice: 'Your reservation has been saved.'
		else
			#render restaurant_path(@restaurant), notice: 'You cannot book at this time.'
		end

	end

	# def create
	# 	@reservation = Reservation.new(:restaurant_id => 1, :slot_id => "1")
		
	# 	@slot = Timeslot.where(:slot => "Monday", :restaurant_id => 1).first
		
	# 	if @slot != nil
	# 		if Reservation.where(:slot => @slot).count < 10
	# 			@reservation.save
	# 			redirect_to user_path(current_user), notice: 'Your reservation has been saved.'
	# 		else
	# 			render restaurant_path, notice: 'You cannot book at this time.'
	# 		end
	# 	else
	# 		Timeslot.create(:slot => "Monday")
	# 		@reservation.save
	# 		redirect_to user_path(current_user), notice: 'Your reservation has been saved.'
	# 	end

	# end
end

# @reservation = Reservation.build(params[:reservation])

# @slot = Timeslot.where(:slot => params[:reservation][:slot] AND :restaurant_id => params[:restaurant_id]).first

# if Reservation.where(:slot => params[:reservation][:slot]).count < 10 #Get the restaurant table count

# Timeslot.create(params[:slot])