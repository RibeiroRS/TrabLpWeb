class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :administrador, :integer
  end
end
