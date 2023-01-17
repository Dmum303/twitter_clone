class RenameUserColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :username, :email
    rename_column :users, :screen_name, :username
    rename_column :users, :real_name, :name
  end
end
