class UsersController < ApplicationController


  def create
    @user = Game.find_by(id: params[:id]).users.create(name: params[:name], alias: params[:alias])
    if @user.valid?
      @user[:secret_code] = (RandomWord.adjs.next + " " + RandomWord.nouns.next).split("_").join(" ")
    end
    render json: @user
  end

  def index
    @users = User.all
    render json: @users
  end
end
