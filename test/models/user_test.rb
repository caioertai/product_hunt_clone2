require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "#full_name returns a capitalized first and last name" do
    # SETUP
    first_name = "jOhn"
    last_name = "LenNon"
    user = User.new(first_name: first_name, last_name: last_name)
    # EXERCISE
    actual = user.full_name
    expected = "John Lennon"
    # VERIFY
    assert_equal actual, expected
  end
end
