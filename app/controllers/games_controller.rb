class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.create(name: params[:name], description: params[:description], started: false)
    render json: @game
  end

  def add_users_to_game
    @game = Game.find(params[:id])
    @users = @game.add_list_of_users_to_game_by_id(params[:users])
    puts @users
    render json: @game.users
  end


  def start_game
    @game = Game.find(params[:id])
    @game.start_game
    render json: @game.users
  end

end
