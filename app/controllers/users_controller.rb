class UsersController < ApplicationController

  def create
    @user = User.create(name: params[:name], alias: params[:alias], secret_code: "squirrel president", password_digest: params[:password_digest])
    # if @user.valid?
    #   # @user[:secret_code] = (RandomWord.adjs.next + " " + RandomWord.nouns.next).split("_").join(" ")
    #   # @user[:secret_code] = "Squirrel President"
    # end
    if @user.valid?
      render json: @user
    else
      render json: {error: "That's not a valid user"}
    end
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
      render json: ({error: "Invalid Password"})
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

  def unassigned_users
    @users = User.all.select{|user| !user.game_id}
    render json: @users
  end

  def user_params
    params.permit(:name, :id, :password, :password_confirmation, :alias)
  end
end
