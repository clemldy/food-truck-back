class FoodTruckSerializer < ActiveModel::Serializer
  attributes :id, :name, :facility_type, :food_items, :address
end
