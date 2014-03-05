class WordsearchController < ApplicationController
	def create
		totalscore=0
		flashmsg=""
		if(params[:resp][:colw].to_i==11&&params[:resp][:roww].to_i==8)
		totalscore+=50
		flashmsg+="Got words! "
		else
		flashmsg+="Missed words. "
		end
		if(params[:resp][:colg].to_i==11&&params[:resp][:rowg].to_i==2)
		totalscore+=50
		flashmsg+="Got games! "
		else
		flashmsg+="Missed games. "
		end

		if(params[:resp][:colb].to_i==1&&params[:resp][:rowb].to_i==11)
		totalscore+=50
		flashmsg+="Got books! "
		else
		flashmsg+="Missed books. "
		end

		if(params[:resp][:colp].to_i==1&&params[:resp][:rowp].to_i==6)
		totalscore+=50
		flashmsg+="Got palindrome! "
		else
		flashmsg+="Missed palindrome. "
		end

		if(params[:resp][:cols].to_i==4&&params[:resp][:rows].to_i==4)
		totalscore+=50
		flashmsg+="Got plural! "
		else
		flashmsg+="Missed plurals. "
		end
		flashmsg+=" Total score: "+totalscore.to_s
		flash[:success] = flashmsg
		@score = Score.new(value: totalscore, game_id: params[:resp][:gameid], user: current_user)
		if !current_user.nil? && @score.save#&& user.authenticate(params[:session][:password])
		    #@score.save

  			Game.find(4).update_attribute(:times_played,Score.where(game_id:4).count)
		    flash[:success] = 'Success! ' + flashmsg
		    redirect_to scores_path
		else
		    flash.now[:error] = 'Some issue with score' 
		    if current_user.nil?
		    	flash.now[:error] = 'Login to save scores' 
		    end
		    redirect_to root_path
		end
	end
end
