require "application_system_test_case"

class CrimeFilesTest < ApplicationSystemTestCase
  setup do
    @crime_file = crime_files(:one)
  end

  test "visiting the index" do
    visit crime_files_url
    assert_selector "h1", text: "Crime Files"
  end

  test "creating a Crime file" do
    visit crime_files_url
    click_on "New Crime File"

    click_on "Create Crime file"

    assert_text "Crime file was successfully created"
    click_on "Back"
  end

  test "updating a Crime file" do
    visit crime_files_url
    click_on "Edit", match: :first

    click_on "Update Crime file"

    assert_text "Crime file was successfully updated"
    click_on "Back"
  end

  test "destroying a Crime file" do
    visit crime_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crime file was successfully destroyed"
  end
end
