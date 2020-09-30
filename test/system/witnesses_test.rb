require "application_system_test_case"

class WitnessesTest < ApplicationSystemTestCase
  setup do
    @witness = witnesses(:one)
  end

  test "visiting the index" do
    visit witnesses_url
    assert_selector "h1", text: "Witnesses"
  end

  test "creating a Witness" do
    visit witnesses_url
    click_on "New Witness"

    fill_in "Age", with: @witness.age
    fill_in "Detalle", with: @witness.detalle
    fill_in "Name", with: @witness.name
    fill_in "Rut", with: @witness.rut
    click_on "Create Witness"

    assert_text "Witness was successfully created"
    click_on "Back"
  end

  test "updating a Witness" do
    visit witnesses_url
    click_on "Edit", match: :first

    fill_in "Age", with: @witness.age
    fill_in "Detalle", with: @witness.detalle
    fill_in "Name", with: @witness.name
    fill_in "Rut", with: @witness.rut
    click_on "Update Witness"

    assert_text "Witness was successfully updated"
    click_on "Back"
  end

  test "destroying a Witness" do
    visit witnesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Witness was successfully destroyed"
  end
end
