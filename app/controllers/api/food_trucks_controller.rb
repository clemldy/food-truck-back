class Api::FoodTrucksController < Api::BaseController

  def index
    render json: FoodTruck.where(status: "APPROVED")
  end

end
