class UserMailer < ApplicationMailer
default from: 'no-reply@jungle.com'

  def welcome_email(order)
    @order = order
    @url  = 'http://example.com/login'
    mail(to: 'barlescu92@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
