class AddColumnToTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :screen_name, :string
    add_column :users, :real_name, :string
  end
end
