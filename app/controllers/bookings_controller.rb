class BookingsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @equipment = Equipment.find(params[:equipment_id])
    @booking = Booking.new(booking_params)

    @booking.equipment = @equipment
    @booking.user = current_user

    @booking.total_price = (@booking.ending_date - @booking.starting_date).to_i * @equipment.price_per_day

    if @booking.save
      # logger.debug "#{@booking.total_price}"
      redirect_to root_path
    else
      render template: "equipments/show"
    end

    # logger.debug "#{@booking.equipment}, #{@booking.user}, #{@booking.owner}"
    # redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
