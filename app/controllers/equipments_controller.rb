class EquipmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]

  def index
    @list_cities = Equipment.all.map { |equipment| equipment.location }.uniq
    @equipments = Equipment.where.not(owner: current_user)
    #returns equipments with coordinates

    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { equipment: equipment }),
        image_url: helpers.asset_url('location.svg')
      }
    end
  end

  def search
    @list_cities = Equipment.all.map { |equipment| equipment.location }.uniq
    #@markers = do_mark(@equipments)
    if params[:query].present?
      @equipments = Equipment.where(material_category: params[:query])
    else
      @equipments = Equipment.all
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
    @booking = Booking.new
    @markers = [{
        lat: @equipment.latitude,
        lng: @equipment.longitude,
        image_url: helpers.asset_url('location.svg')
    }]
  end
end
