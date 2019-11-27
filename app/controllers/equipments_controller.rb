class EquipmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    @equipments = Equipment.where.not(owner: current_user) #returns equipments with coordinates

    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { equipment: equipment }),
        image_url: helpers.asset_url('location.svg')
      }
    end

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
