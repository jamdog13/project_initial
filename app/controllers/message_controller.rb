class MessageController < ApplicationController
	def new
		@id=params[:id]
   		@message = Message.new
	end
	def create
	end
end
