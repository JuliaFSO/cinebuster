class ChangeUsername < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :username, :name
    remove_column :users, :cinema
  end
end
