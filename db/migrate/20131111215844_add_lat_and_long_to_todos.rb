class AddLatAndLongToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :latitude, :string
    add_column :todos, :longitude, :string
  end
end
