class Owner::EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.where(owner_id: current_user.id)
  end

  def new
  end

  def create
  end
end
