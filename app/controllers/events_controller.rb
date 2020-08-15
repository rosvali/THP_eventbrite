class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(events_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def index
    @events = Event.all
  end

  def show
    @event = finder
    @user = User.find(@event.user_id)
  end

  def edit
    @event = finder
  end

  def update
    @event = finder
    @event.update(events_params)
    redirect_to event_attendances_path(@event.id)
  end

  def destroy
    event = finder
    event.delete
    redirect_to root_path
  end

private

def events_params
  params.require(:event).permit(:title, :start_date, :duration, :description, :price, :location, :event_picture)
end

def finder
  Event.find(params[:id])
end

end