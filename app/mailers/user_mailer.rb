class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
  
  def get_password_mail
    @user = params[:user]
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Password for login to member list')
  end
  def get_set_password_mail
    @user = params[:user]
    @url  = 'http://localhost:3000/set_password'
    mail(to: @user.email, subject: 'Set Password for login to member list')
  end
end
