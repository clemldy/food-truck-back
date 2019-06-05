# rake populate:init
require 'csv'

namespace 'populate' do
  task init: :environment do

    csv_text = File.read(Rails.root.join('lib', 'mobile_food_facility_permit.csv'))
    csv      = CSV.parse(csv_text, headers: true)
    # csv.each do |row|
    #   puts row[0]
    # end
    csv.each do |row|
      t               = FoodTruck.new
      t.location_id   = row[0]
      t.name          = row['Applicant']
      t.facility_type = row['FacilityType']
      t.status        = row['Status']
      t.food_items    = row['FoodItems']
      t.latitude      = row['Latitude']
      t.longitude     = row['Longitude']
      t.save
    end

    puts "There are now #{FoodTruck.count} rows in the food_trucks table"

  end
end
