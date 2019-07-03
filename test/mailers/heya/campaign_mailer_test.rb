require "test_helper"

module Heya
  class CampaignMailerTest < ActionMailer::TestCase
    test "build" do
      ShadowNewsletterCampaign.load_model

      contact = contacts(:one)
      message = ShadowNewsletterCampaign.messages.first

      email = CampaignMailer.with(contact: contact, message: message).build

      assert_emails 1 do
        email.deliver_now
      end

      assert_equal ["badgers@honeybadger.io"], email.from
      assert_equal ["one@example.com"], email.to
      assert_match /Unsubscribe/, email.html_part.body.to_s
      assert_match /Unsubscribe/, email.text_part.body.to_s
    end
  end
end
