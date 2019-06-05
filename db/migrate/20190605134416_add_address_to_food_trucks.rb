class AddAddressToFoodTrucks < ActiveRecord::Migration[5.2]
  def change
    add_column :food_trucks, :address, :string
  end
end
