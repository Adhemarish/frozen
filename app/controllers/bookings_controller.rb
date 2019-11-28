class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new(booking_params)

    @booking.equipment = @equipment
    @booking.user = current_user

    @booking.total_price = (@booking.ending_date - @booking.starting_date + 1).to_i * @equipment.price_per_day

    if @booking.save
      redirect_to '/bookings'
    else
      render template: "equipments/show"
    end
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = "Annulé"
    @booking.save!
    redirect_to '/bookings'
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy # @booking.status = "cancelled" TODO plus tard
    redirect_to '/bookings'
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date, :total_price)
  end
end
