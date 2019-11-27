class EquipmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @equipments = Equipment.where.not(owner: current_user)
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
