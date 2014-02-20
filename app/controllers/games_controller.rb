class GamesController < ApplicationController
	def index
		@games=Game.all
	end
	def show
		@game=Game.find(params[:id])
	end
	def update_favorited
		@user=current_user
		@game=Game.find(params[:fav][:game_id])
	end
end
