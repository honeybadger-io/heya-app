require "test_helper"

class ConfirmationMailerTest < ActionMailer::TestCase
  test "invite" do
    user = users(:one)
    email = ConfirmationMailer.build(user)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["josh@honeybadger.io"], email.from
    assert_equal ["heya@honeybadger.io"], email.reply_to
    assert_equal [user.email], email.to
    assert_equal "Please confirm your email address", email.subject
    assert_match user.hashid, email.html_part.to_s
    assert_match user.hashid, email.text_part.to_s
  end
end
