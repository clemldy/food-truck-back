class CreateFoodTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :food_trucks do |t|
      t.integer :location_id
      t.string :name
      t.string :facility_type
      t.string :status
      t.string :food_items
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
