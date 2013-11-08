class AddFieldsToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :priority, :integer, :default => 2
  end
end
