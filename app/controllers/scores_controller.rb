class ScoresController < ApplicationController
	def create #needs to be made

  	score = Score.new(value: params[:score][:value])
	  if score #&& user.authenticate(params[:session][:password])
	    score.save
	    flash.now[:error] = 'Some issue with score'
	    #redirect_to games_path
	  else
	    flash.now[:error] = 'Some issue with score' 
      	#redirect_to users_path
	  end
	end
end
