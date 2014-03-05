class MessagesController < ApplicationController

	def new
		@rec=params[:user_id]
   		@message = Message.new
	end


	def create
		rec_id = params[:message][:recipient]
    	@message = Message.new(recipient: rec_id, sender: current_user.id ,content:params[:message][:content],title:params[:message][:title],received:"unread")
	  	if !current_user.nil? && @message.save
	   	 	flash[:success] = 'Message sent!'
	   	 	redirect_to root_path
	  	else
	    	flash.now[:error] = 'Some issue with message' 
	    	if current_user.nil?
	    		flash.now[:error] = 'Login to send messages' 
	    	end
	    	redirect_to root_path
	  	end
	end
end


