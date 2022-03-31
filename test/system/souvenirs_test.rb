require "application_system_test_case"

class SouvenirsTest < ApplicationSystemTestCase
  setup do
    @souvenir = souvenirs(:one)
  end

  test "visiting the index" do
    visit souvenirs_url
    assert_selector "h1", text: "Souvenirs"
  end

  test "should create souvenir" do
    visit souvenirs_url
    click_on "New souvenir"

    fill_in "Description", with: @souvenir.description
    fill_in "Feeling", with: @souvenir.feeling
    fill_in "Timemarker", with: @souvenir.timemarker
    fill_in "Title", with: @souvenir.title
    click_on "Create Souvenir"

    assert_text "Souvenir was successfully created"
    click_on "Back"
  end

  test "should update Souvenir" do
    visit souvenir_url(@souvenir)
    click_on "Edit this souvenir", match: :first

    fill_in "Description", with: @souvenir.description
    fill_in "Feeling", with: @souvenir.feeling
    fill_in "Timemarker", with: @souvenir.timemarker
    fill_in "Title", with: @souvenir.title
    click_on "Update Souvenir"

    assert_text "Souvenir was successfully updated"
    click_on "Back"
  end

  test "should destroy Souvenir" do
    visit souvenir_url(@souvenir)
    click_on "Destroy this souvenir", match: :first

    assert_text "Souvenir was successfully destroyed"
  end
end
