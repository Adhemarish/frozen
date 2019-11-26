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
  end

  def equipment_params
    params.require(:equipment).permit(:title, :details, :material_category,:location, :picture, :price_)
  end
end
