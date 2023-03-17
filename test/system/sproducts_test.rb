require "application_system_test_case"

class SproductsTest < ApplicationSystemTestCase
  setup do
    @sproduct = sproducts(:one)
  end

  test "visiting the index" do
    visit sproducts_url
    assert_selector "h1", text: "Sproducts"
  end

  test "should create sproduct" do
    visit sproducts_url
    click_on "New sproduct"

    fill_in "Alignment", with: @sproduct.alignment
    fill_in "Description", with: @sproduct.description
    fill_in "Image", with: @sproduct.image
    fill_in "Title", with: @sproduct.title
    click_on "Create Sproduct"

    assert_text "Sproduct was successfully created"
    click_on "Back"
  end

  test "should update Sproduct" do
    visit sproduct_url(@sproduct)
    click_on "Edit this sproduct", match: :first

    fill_in "Alignment", with: @sproduct.alignment
    fill_in "Description", with: @sproduct.description
    fill_in "Image", with: @sproduct.image
    fill_in "Title", with: @sproduct.title
    click_on "Update Sproduct"

    assert_text "Sproduct was successfully updated"
    click_on "Back"
  end

  test "should destroy Sproduct" do
    visit sproduct_url(@sproduct)
    click_on "Destroy this sproduct", match: :first

    assert_text "Sproduct was successfully destroyed"
  end
end
