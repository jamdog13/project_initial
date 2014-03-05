class Commentgameid < ActiveRecord::Migration
  def change
  	add_column :comments, :game_id, :integer
  end
end
