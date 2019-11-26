class Owner::BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def accept
  end

  def decline
  end
end
