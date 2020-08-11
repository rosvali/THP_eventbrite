class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(events_params)
    if @event.save
      attendance = Attendance.create(event: @event, user: current_user)
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @user = Attendance.find_by(event_id: @event.id).user
  end

private

def events_params
  params.require(:event).permit(:title, :start_date, :duration, :description, :price, :location)
end

end