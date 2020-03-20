ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def assert_ican(email)
    assert_match(/Unsubscribe/, email.html_part.body.to_s)
    assert_match(/Unsubscribe/, email.text_part.body.to_s)
    assert_match(/11410 Northeast 124th Street #246, Kirkland WA 98034/, email.html_part.body.to_s)
    assert_match(/11410 Northeast 124th Street #246, Kirkland WA 98034/, email.text_part.body.to_s)
  end
end
