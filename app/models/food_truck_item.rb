class FoodTruckItem < ApplicationRecord
  belongs_to :food_truck
  belongs_to :item
end
