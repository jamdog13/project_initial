class ScoresController < ApplicationController
	def create #needs to be made

  	game = Game.find(params[:score][:gameid])
  	game.update_attribute(:times_played,Score.where(game_id:params[:score][:gameid]).count)
    # TBD TBD TBD need to have the current user
    @score = Score.new(value: params[:score][:value], game: Game.find(params[:score][:gameid]), user: current_user)
	  if !current_user.nil? && @score.save#&& user.authenticate(params[:session][:password])
	    #@score.save
	    flash[:success] = 'Success!'
	    redirect_to scores_path
	  else
	    flash.now[:error] = 'Some issue with score' 
	    if current_user.nil?
	    	flash.now[:error] = 'Login to save scores' 
	    end
      	#redirect_to users_path
	  end
	end
	def new

    @game = Game.find(params[:gameid])
    # TBD TBD TBD need to have the current user
    @score = Score.new(value: params[:score][:value], game: @game, user: current_user)
  
	end
	def index
		@scores=Score.all.paginate(:page => params[:page], :per_page =>30).order(created_at: :desc)
	end
end
