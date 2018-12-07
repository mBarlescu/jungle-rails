class UserEmail < ApplicationMailer
  def notify_user(user)
    @user = user
    mail(to: @user.email, subject: "welcome" )
end
end
