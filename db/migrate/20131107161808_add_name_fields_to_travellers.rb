class AddNameFieldsToTravellers < ActiveRecord::Migration
  def change
    add_column :travellers, :first_name, :string
    add_column :travellers, :last_name, :string
  end
end
