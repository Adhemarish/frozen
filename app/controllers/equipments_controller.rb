class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
  end

  def new
  end

  def create
  end

end
