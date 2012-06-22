class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :password
      t.integer :rg
      t.integer :cpf
      t.references :address

      t.timestamps
    end
    add_index :users, :address_id
  end
end
