require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "it can opt out" do
    user = users(:one)

    refute user.opted_out?

    user.opt_out

    assert user.opted_out?
  end
end
