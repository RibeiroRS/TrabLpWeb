class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :number
      t.string :district
      t.string :city
      t.string :complement

      t.timestamps
    end
  end
end
