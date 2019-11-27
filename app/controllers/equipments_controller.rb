class EquipmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @equipments = Equipment.all
  end

  def new
  end

  def create
  end

<<<<<<< HEAD
=======
  def show
    @equipment = Equipment.find(params[:id])
    @booking = Booking.new
  end
>>>>>>> 42a636dfe2389a736679a64d89c91fe807fda21a
end
