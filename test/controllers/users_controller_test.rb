require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "it renders the homepage" do
    get "/"
    assert response.status == 200
  end

  test "it creates a user" do
    assert_changes -> { User.where(confirmed_at: nil).count } do
      post "/users", params: {user: {email: "user@example.com"}}
    end
    assert_redirected_to "/thanks"
  end
end
