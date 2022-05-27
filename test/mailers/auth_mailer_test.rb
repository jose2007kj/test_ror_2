require "test_helper"

class AuthMailerTest < ActionMailer::TestCase
  test "gen_password_email" do
    mail = AuthMailer.gen_password_email
    assert_equal "Gen password email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
