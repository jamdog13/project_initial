class FixUserFavs < ActiveRecord::Migration
  def change
  	remove_column :users, :favorites

  	add_column :users, :liked, :integer, array: true, default: []
  end
end
