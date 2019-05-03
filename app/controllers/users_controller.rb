class UsersController < ApplicationController

  def create
    @user = Game.find_by(id: params[:id]).users.create(name: params[:name], alias: params[:alias], secret_code: "squirrel president", password_digest: params[:password_digest])
    # if @user.valid?
    #   # @user[:secret_code] = (RandomWord.adjs.next + " " + RandomWord.nouns.next).split("_").join(" ")
    #   # @user[:secret_code] = "Squirrel President"
    # end
    render json: @user
  end

  def locate
    @user = User.find(params[:id])
    @user.update(latitude: params[:latitude], longitude: params[:longitude], lastTimeUpdated: Time.at(params[:timestamp]/1000))
    render json: @user[:lastTimeUpdated]
  end

  def login
    @user = User.find_by(alias: params[:alias])
    if @user.password_digest == params[:password_digest]
      render json: @user
    else
      render json: {error: "Invalid Password"}
    end
  end

  def update_user_location
    @user = User.find(params[:id])
    @user.update(params[:lat], params[:long])
  end

  def index
    @users = User.all
    render json: @users
  end

  def user_params
    params.permit(:name, :id, :password, :password_confirmation, :alias)
  end
end
