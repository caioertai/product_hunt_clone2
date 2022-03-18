require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "#full_name returns a capitalized first and last name" do
    first_name = "jOhn"
    last_name = "LenNon"
    user = User.new(first_name: first_name, last_name: last_name)

    actual = user.full_name
    expected = "John Lennon"

    assert_equal actual, expected
  end

  test "#full_name returns just last name if first is missing" do
    user = User.new(last_name: "Lennon")
    assert_equal user.full_name, "Lennon"
  end
end
