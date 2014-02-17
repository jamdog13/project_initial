class AddLast < ActiveRecord::Migration
  def change
  	add_column :users, :lastName, :string
  	add_column :messages, :received, :string 
  end
end
