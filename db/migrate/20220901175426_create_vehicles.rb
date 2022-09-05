class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.integer :vehicle_number
      t.string :vehicle_type
      t.string :vehicle_model
      t.string :vehicle_color

      t.timestamps
    end
  end
end
