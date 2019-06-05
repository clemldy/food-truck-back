class Item < ApplicationRecord
  has_many :food_truck_items
  has_many :food_trucks, through: :food_truck_items
end
