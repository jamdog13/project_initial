class FavoritesController < ApplicationController
	def create
		game = Game.find(params[:favorite][:game_id])
		user= current_user
		targ= games_path+"/"+params[:favorite][:game_id].to_i
		@fav = Favorite.new(user_id:current_user.id,game_id:params[:favorite][:game_id])
		if @fav.save && Favorite.find_by(game_id,params[:favorite][:game_id]).where(user_id,current_user.id).nil?
	    	flash[:success] = 'Favorited!'
			redirect_to targ
		else
			flash[:error] = "favorite failed"
			redirect_to targ
		end

	end
end
