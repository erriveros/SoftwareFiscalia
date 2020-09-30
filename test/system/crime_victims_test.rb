require "application_system_test_case"

class CrimeVictimsTest < ApplicationSystemTestCase
  setup do
    @crime_victim = crime_victims(:one)
  end

  test "visiting the index" do
    visit crime_victims_url
    assert_selector "h1", text: "Crime Victims"
  end

  test "creating a Crime victim" do
    visit crime_victims_url
    click_on "New Crime Victim"

    click_on "Create Crime victim"

    assert_text "Crime victim was successfully created"
    click_on "Back"
  end

  test "updating a Crime victim" do
    visit crime_victims_url
    click_on "Edit", match: :first

    click_on "Update Crime victim"

    assert_text "Crime victim was successfully updated"
    click_on "Back"
  end

  test "destroying a Crime victim" do
    visit crime_victims_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crime victim was successfully destroyed"
  end
end
