class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new  
  end

  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      raise ActionController::RoutingError.new('Forbidden')
    end
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @user, notice: 'Your account was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to @user, notice: 'Your account was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path
  end
end
