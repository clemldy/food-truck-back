class FoodTruck < ApplicationRecord

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  has_many :food_truck_items
  has_many :items, through: :food_truck_items

end
