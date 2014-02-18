class IdsForScores < ActiveRecord::Migration
  def change
  	 #game and user ids!
  	add_column :scores, :game_id, :integer
  	add_column :users, :user_id, :integer
  end
end
