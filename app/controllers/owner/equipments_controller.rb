class Owner::EquipmentsController < ApplicationController
  def index
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.owner = current_user
    if @equipment.save
      redirect_to owner_equipments_path
    else
      render :new
    end
  end

  private

  def equipment_params
    params.require(:equipment).permit(:title, :details, :material_category, :location, :picture, :price_per_day)
  end

end
