class Comments < ActiveRecord::Migration
  def change
  	add_column :comments ,:user_id ,:integer
  	add_column :comments ,:content ,:string
  	add_column :comments ,:likes ,:integer
  end
end
