class BikesController < ApplicationController
  def index
    @bikes = Bike.where(:user_id => current_user.id)
  end

  def new
  end

  def edit
  end

  def show
    @telemetries = Telemetry.all
    
    @bike = Bike.find(params[:id])
  end

end
