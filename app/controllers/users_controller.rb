class UsersController < ApplicationController
  before_action :authenticate_user

  def show
    @user = user_finder
    @events = Event.where(user_id: @user.id)
  end

  def edit
    @user = user_finder
  end

  def update
    @user = user_finder
    @user.update(user_params)
    redirect_to root_path
  end

private

  def user_finder
    User.find(params[:id])
  end

  def authenticate_user
    if current_user != user_finder
      redirect_to root_path
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description)
  end
end