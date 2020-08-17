class Admin::EventSubmissionsController < ApplicationController

before_action :authenticate_user!
before_action :require_admin

  def show
  	@event = finder
    @user = User.find(@event.user_id)
  end

  def index
  	@events = Event.all
  end

  def update
  	puts params
  	event = finder
  	event.update(params.permit(:validated))
  	redirect_to admin_root_path
  end
end
