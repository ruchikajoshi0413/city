require "application_system_test_case"

class RuchikasTest < ApplicationSystemTestCase
  setup do
    @ruchika = ruchikas(:one)
  end

  test "visiting the index" do
    visit ruchikas_url
    assert_selector "h1", text: "Ruchikas"
  end

  test "should create ruchika" do
    visit ruchikas_url
    click_on "New ruchika"

    fill_in "Body", with: @ruchika.body
    fill_in "Title", with: @ruchika.title
    click_on "Create Ruchika"

    assert_text "Ruchika was successfully created"
    click_on "Back"
  end

  test "should update Ruchika" do
    visit ruchika_url(@ruchika)
    click_on "Edit this ruchika", match: :first

    fill_in "Body", with: @ruchika.body
    fill_in "Title", with: @ruchika.title
    click_on "Update Ruchika"

    assert_text "Ruchika was successfully updated"
    click_on "Back"
  end

  test "should destroy Ruchika" do
    visit ruchika_url(@ruchika)
    click_on "Destroy this ruchika", match: :first

    assert_text "Ruchika was successfully destroyed"
  end
end
