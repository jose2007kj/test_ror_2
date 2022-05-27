# Preview all emails at http://localhost:3000/rails/mailers/auth_mailer
class AuthMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/auth_mailer/gen_password_email
  def gen_password_email
    AuthMailer.gen_password_email
  end

end
