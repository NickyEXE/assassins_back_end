class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end


  def start_game
    @game = Game.find(params[:id])
    @game.start_game
    render json: @game.users
  end
end
