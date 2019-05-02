class KillsController < ApplicationController
  def index
    @kills = Kill.all
    render json: @kills
  end
end
