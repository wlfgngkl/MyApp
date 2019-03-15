require "application_system_test_case"

class PkmnsTest < ApplicationSystemTestCase
  setup do
    @pkmn = pkmns(:one)
  end

  test "visiting the index" do
    visit pkmns_url
    assert_selector "h1", text: "Pkmns"
  end

  test "creating a Pkmn" do
    visit pkmns_url
    click_on "New Pkmn"

    fill_in "Gen", with: @pkmn.gen
    fill_in "Name", with: @pkmn.name
    fill_in "Typ1", with: @pkmn.typ1
    fill_in "Typ2", with: @pkmn.typ2
    click_on "Create Pkmn"

    assert_text "Pkmn was successfully created"
    click_on "Back"
  end

  test "updating a Pkmn" do
    visit pkmns_url
    click_on "Edit", match: :first

    fill_in "Gen", with: @pkmn.gen
    fill_in "Name", with: @pkmn.name
    fill_in "Typ1", with: @pkmn.typ1
    fill_in "Typ2", with: @pkmn.typ2
    click_on "Update Pkmn"

    assert_text "Pkmn was successfully updated"
    click_on "Back"
  end

  test "destroying a Pkmn" do
    visit pkmns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pkmn was successfully destroyed"
  end
end
