class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new  
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    unless @restaurant.manager == current_user
      raise ActionController::RoutingError.new('Forbidden')
    end
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.manager = current_user

    if @restaurant.save
      redirect_to @restaurant, notice: 'Your restaurant was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update_attributes(params[:restaurant])
      redirect_to @restaurant, notice: 'Your restaurant was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to root_path
  end

end
