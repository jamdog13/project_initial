class TimesPlayedFix < ActiveRecord::Migration
  def change
	remove_column :games, :times_played
  	add_column :games, :times_played, :integer, default: 0
  end
end
