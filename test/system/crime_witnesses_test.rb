require "application_system_test_case"

class CrimeWitnessesTest < ApplicationSystemTestCase
  setup do
    @crime_witness = crime_witnesses(:one)
  end

  test "visiting the index" do
    visit crime_witnesses_url
    assert_selector "h1", text: "Crime Witnesses"
  end

  test "creating a Crime witness" do
    visit crime_witnesses_url
    click_on "New Crime Witness"

    click_on "Create Crime witness"

    assert_text "Crime witness was successfully created"
    click_on "Back"
  end

  test "updating a Crime witness" do
    visit crime_witnesses_url
    click_on "Edit", match: :first

    click_on "Update Crime witness"

    assert_text "Crime witness was successfully updated"
    click_on "Back"
  end

  test "destroying a Crime witness" do
    visit crime_witnesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crime witness was successfully destroyed"
  end
end
