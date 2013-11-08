class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.integer :traveller_id
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
