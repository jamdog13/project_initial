class Messageimplement < ActiveRecord::Migration
  def change
  	add_column :messages, :sender, :integer
  	add_column :messages, :recipient, :integer
  end
end
