class UsersController < ApplicationController
  def create
    user = Game.find_by(id: user_params[:id]).users.create(name: user_params[:name], alias: user_params[:alias])
    user[:secret_code] = (RandomWord.adjs.next + " " + RandomWord.nouns.next).split("_").join(" ")
  end

  private

  def user_params
    params.require(:user).permit(:name, :alias)
  end
end
