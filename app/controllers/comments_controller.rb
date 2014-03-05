class CommentsController < ApplicationController
	def create #needs to be made

  	gameid = Game.find(params[:comment][:gameid]).id
    # TBD TBD TBD need to have the current user
    @comment = Comments.new(content: params[:comment][:content], game_id:gameid, user_id: current_user.id, likes: 1)
	  if !current_user.nil? && @comment.save#&& user.authenticate(params[:session][:password])
	    #@score.save
	    flash[:success] = 'Comment posted!'
	    redirect_to games_path+"/"+gameid.to_s
	  else
	    flash.now[:error] = 'Some issue with comment' 
	    if current_user.nil?
	    	flash.now[:error] = 'Login to post comments' 
	    end
      	#redirect_to users_path
	  end
	end
	def new

    @game = Game.find(params[:gameid])
    # TBD TBD TBD need to have the current user
    @comment = Comments.new(content: params[:comment][:content], game_id:@game.id, user_id: current_user.id, likes:1)
  
	end
end
