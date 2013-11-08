class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :name
      t.string :image_url
      t.integer :destination_id
      t.integer :traveller_id
      t.string :where

      t.timestamps
    end
  end
end
