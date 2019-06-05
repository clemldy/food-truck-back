class Api::FoodTrucksController < Api::BaseController

  def index
    if params[:address].present?
      render json: FoodTruck.near(params[:address], 1).includes(:items)
    else
      render json: FoodTruck.where(status: "APPROVED", facility_type: "Truck").includes(:items)
    end
  end

end
