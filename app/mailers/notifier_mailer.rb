class NotifierMailer < ApplicationMailer

  default from: "murder@murder-with-friends.herokuapp.com"

  def kill_notification
    @user = params[:user]
    mail(to: @user.email, subject: 'Your Target Has Been Slain')
  end
end
