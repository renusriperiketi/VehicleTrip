class AddTripnameToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :trip_name, :string
  end
end
