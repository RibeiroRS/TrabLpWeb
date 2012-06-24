class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :description
      t.float :weight
      t.float :volume
      t.float :totalCost
      t.boolean :paid
      t.integer :addressFrom
      t.integer :addressTo
      t.references :vehicle

      t.timestamps
    end
    add_index :deliveries, :vehicle_id
  end
end
