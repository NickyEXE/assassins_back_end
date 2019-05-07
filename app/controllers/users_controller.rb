class UsersController < ApplicationController

  def create
    @user = User.create(name: params[:name], alias: params[:alias], secret_code: (Faker::Hacker.adjective + " " + Faker::Creature::Animal.name), password_digest: params[:password_digest])
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
    render json: @user
  end

  def kill_target
    @user = User.find(params[:id])
    @target = User.find(params[:target_id])
    Kill.create(killer_id: params[:id], victim_id: params[:target_id], game_id: params[:gameId])
    @user.update(target_id: @target.target_id)
    @target.update(target_id: nil)
    render json: @user
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

  def leave_game
    @user = User.find(params[:id])
    @user.update(game_id: nil)
    render json: @user
  end

  def unassigned_users
    @users = User.all.select{|user| !user.game_id}
    render json: @users
  end

  def user_params
    params.permit(:name, :id, :password, :password_confirmation, :alias)
  end
end
