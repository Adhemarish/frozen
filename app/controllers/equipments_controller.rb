class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
  end

  def new
  end

  def create
  end

  def show
    @equipment = Equipment.find(params[:id])
    @booking = Booking.new
  end
end
