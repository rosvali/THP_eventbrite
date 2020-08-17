class AttendancesController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_creator, only: [:index]

def new
  @event = event_finder
end

def create
  @event = event_finder
  Attendance.create(event: @event, user: current_user)
  @amount = @event.price
  customer = Stripe::Customer.create({
    email: params[:stripeEmail],
    source: params[:stripeToken],
  })

  charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'eur',
  })

  redirect_to root_path

rescue Stripe::CardError => e
  flash[:error] = e.message
  render 'new'
end

def index
  @event = event_finder
end

private

def authenticate_creator
  event = event_finder
  redirect_to root_path if event.user_id != current_user.id
end

def event_finder
  Event.find(params[:event_id])
end

end
