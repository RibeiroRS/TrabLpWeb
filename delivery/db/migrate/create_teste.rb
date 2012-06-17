class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :teste do |t|
      t.string :testeNome
  end

  def self.down
    drop_table :teste
  end
end
