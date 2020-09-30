require "application_system_test_case"

class VictimsTest < ApplicationSystemTestCase
  setup do
    @victim = victims(:one)
  end

  test "visiting the index" do
    visit victims_url
    assert_selector "h1", text: "Victims"
  end

  test "creating a Victim" do
    visit victims_url
    click_on "New Victim"

    fill_in "Age", with: @victim.age
    fill_in "Detalle", with: @victim.detalle
    fill_in "Name", with: @victim.name
    fill_in "Rut", with: @victim.rut
    click_on "Create Victim"

    assert_text "Victim was successfully created"
    click_on "Back"
  end

  test "updating a Victim" do
    visit victims_url
    click_on "Edit", match: :first

    fill_in "Age", with: @victim.age
    fill_in "Detalle", with: @victim.detalle
    fill_in "Name", with: @victim.name
    fill_in "Rut", with: @victim.rut
    click_on "Update Victim"

    assert_text "Victim was successfully updated"
    click_on "Back"
  end

  test "destroying a Victim" do
    visit victims_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Victim was successfully destroyed"
  end
end