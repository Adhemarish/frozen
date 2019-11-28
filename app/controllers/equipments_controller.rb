class EquipmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]

  def index
        if params[:query].present?
          sql_query = "material_category ILIKE :query OR location ILIKE :query"
                  @equipments = Equipment.where.not(owner: current_user)
                  @equipments = @equipments.where(sql_query, query: "%#{params[:query].capitalize}%")
        else
          @equipments = Equipment.where.not(owner: current_user)
        end
        @markers = @equipments.map do |equipment|
          {
            lat: equipment.latitude,
            lng: equipment.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { equipment: equipment }),
            image_url: helpers.asset_url('location.svg')
          }
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
