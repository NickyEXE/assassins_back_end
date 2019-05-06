class KillsController < ApplicationController
  def index
    @kills = Kill.all
    render json: @kills
  end

  def stats
    @kills = Kill.where(game_id: params[:game_id])
    render json: @kills
  end
end
