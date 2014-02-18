class RemoveBadUserCols < ActiveRecord::Migration
  def change
  	remove_column :users, :password
  	remove_column :users, :user_id
  end
end
