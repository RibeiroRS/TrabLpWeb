class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :species
      t.float :maxWeight
      t.float :maxVolume
      t.string :description

      t.timestamps
    end
  end
end
