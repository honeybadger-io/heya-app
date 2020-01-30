require "test_helper"

module Heya
  class DemoCampaignTest < ActionMailer::TestCase
    test "intro" do
      user = users(:one)
      email = DemoCampaign.intro(user)

      assert_emails 1 do
        email.deliver_now
      end

      assert_equal ["support@honeybadger.io"], email.from
      assert_equal ["one@example.com"], email.to
      assert_ican email
    end

    test "what_it_is" do
      user = users(:one)
      email = DemoCampaign.what_it_is(user)

      assert_emails 1 do
        email.deliver_now
      end

      assert_equal ["support@honeybadger.io"], email.from
      assert_equal ["one@example.com"], email.to
      assert_ican email
    end

    test "why_we_made_it" do
      user = users(:one)
      email = DemoCampaign.why_we_made_it(user)

      assert_emails 1 do
        email.deliver_now
      end

      assert_equal ["support@honeybadger.io"], email.from
      assert_equal ["one@example.com"], email.to
      assert_ican email
    end

    test "is_it_right" do
      user = users(:one)
      email = DemoCampaign.is_it_right(user)

      assert_emails 1 do
        email.deliver_now
      end

      assert_equal ["support@honeybadger.io"], email.from
      assert_equal ["one@example.com"], email.to
      assert_ican email
    end

    test "how_it_works" do
      user = users(:one)
      email = DemoCampaign.how_it_works(user)

      assert_emails 1 do
        email.deliver_now
      end

      assert_equal ["support@honeybadger.io"], email.from
      assert_equal ["one@example.com"], email.to
      assert_ican email
    end

    test "everything_else" do
      user = users(:one)
      email = DemoCampaign.everything_else(user)

      assert_emails 1 do
        email.deliver_now
      end

      assert_equal ["support@honeybadger.io"], email.from
      assert_equal ["one@example.com"], email.to
      assert_ican email
    end

    test "outro" do
      user = users(:one)
      email = DemoCampaign.outro(user)

      assert_emails 1 do
        email.deliver_now
      end

      assert_equal ["support@honeybadger.io"], email.from
      assert_equal ["one@example.com"], email.to
      assert_ican email
    end
  end
end
