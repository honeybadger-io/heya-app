require "test_helper"

class ConfirmationsControllerTest < ActionDispatch::IntegrationTest
  test "it confirms the user" do
    user = users(:one)
    assert_changes -> { User.where(id: user.id).where.not(confirmed_at: nil).count }, from: 0, to: 1 do
      get "/users/#{user.hashid}/confirmation"
    end
    assert response.status == 200
  end
end
