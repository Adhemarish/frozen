class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
  end

  def create
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
