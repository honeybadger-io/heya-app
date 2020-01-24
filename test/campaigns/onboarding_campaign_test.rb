require "test_helper"

module Heya
  class OnboardingCampaignTest < ActionMailer::TestCase
    test "first" do
      user = users(:one)
      email = OnboardingCampaign.first(user)

      assert_emails 1 do
        email.deliver_now
      end

      assert_equal ["support@honeybadger.io"], email.from
      assert_equal ["one@example.com"], email.to
      assert_match /Unsubscribe/, email.html_part.body.to_s
      assert_match /Unsubscribe/, email.text_part.body.to_s
    end
  end
end
