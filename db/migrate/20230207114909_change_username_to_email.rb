class ChangeUsernameToEmail < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :username, :temp_username
    rename_column :users, :email, :username
    rename_column :users, :temp_username, :email

  end
end
