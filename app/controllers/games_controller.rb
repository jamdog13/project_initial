class GamesController < ApplicationController
	def index
		@games=Game.all
	end
	def show
		@game=Game.find(params[:id])
		@comments=Comments.where(game_id:params[:id]).paginate(:page => params[:page], :per_page =>5).order(created_at: :desc)

	end
	#def update_favorited
	#	@user=current_user
	#	@game=Game.find(params[:fav][:game_id])
	#
	#	end
end
