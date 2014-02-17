class AddPassword < ActiveRecord::Migration
  def change
  	add_column :users, :password_digest, :string
  	add_column :users, :password, :string

  	create_table :achievements_users do |t|
      t.integer :achievement_id
      t.integer :user_id

      t.timestamps
    end
  end
end
