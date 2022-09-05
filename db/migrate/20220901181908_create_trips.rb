class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.integer :trip_number
      t.integer :distance
      t.string :fuel_consumption
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
