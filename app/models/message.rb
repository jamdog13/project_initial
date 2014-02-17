class Message < ActiveRecord::Base
	has_and_belongs_to_many :users

	has_many :messages_users

	belongs_to    :sender, :foreign_key=>"sender_id", :class_name=>'User'               # message.sender

end
