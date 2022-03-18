require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url # "/"

    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: 2
  end

  test "adding new products" do
    # assume user is logged in
    login_as users(:default_user)

    # visit the root
    visit root_url
    click_link "Add Product"

    # fill name with Le Wagon
    fill_in "Name", with: "Le Wagon"
    # fill tagline with Coding Bootcamp
    fill_in "Tagline", with: "Coding Bootcamp"
    # click Create Product
    click_on "Create Product"

    # assert user was taken to index
    assert_equal root_path, page.current_path
    # assert new product is there
    assert_text "Le Wagon"
    assert_text "Coding Bootcamp"
  end
end
