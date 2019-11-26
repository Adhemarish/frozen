class Owner::BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    if @booking.save
      redirect_to owner_bookings_path
    end
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "refused"
    if @booking.save
      redirect_to owner_bookings_path
    end
  end
end
