class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.create(start_time: Time.at(params[:timestamp]/1000) started: false)
    render @game
  end


  def start_game
    @game = Game.find(params[:id])
    @game.start_game
    render json: @game.users
  end

end
