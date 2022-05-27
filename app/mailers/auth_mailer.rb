class AuthMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.auth_mailer.gen_password_email.subject
  #
  
  def gen_password_email
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
