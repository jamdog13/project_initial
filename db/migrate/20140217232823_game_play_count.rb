class GamePlayCount < ActiveRecord::Migration
  def change
  	add_column :games, :times_played, :integer
  end
end
