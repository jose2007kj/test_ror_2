class User < ApplicationRecord
  before_create :set_password
  after_save :send_email

  private
  def set_password 
    #code to gen random password text
    string_length = 8
    pwd = rand(36**string_length).to_s(36)
    puts "#{pwd} is pwd generated"
    self.password = pwd
  end 
  def send_email
    AuthMailer.with(user: self).gen_password_email.deliver_later
  end
end
