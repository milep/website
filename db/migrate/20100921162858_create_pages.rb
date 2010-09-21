class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.string :short_name
      t.integer :order, :default => 1
      t.text :body

      t.timestamps

    end
    add_index :pages, :short_name, :unique => true
  end

  def self.down
    drop_table :pages
  end
end
