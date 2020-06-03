require "application_system_test_case"

class RaresTest < ApplicationSystemTestCase
  setup do
    @rare = rares(:one)
  end

  test "visiting the index" do
    visit rares_url
    assert_selector "h1", text: "Rares"
  end

  test "creating a Rare" do
    visit rares_url
    click_on "New Rare"

    fill_in "Rarity", with: @rare.rarity
    click_on "Create Rare"

    assert_text "Rare was successfully created"
    click_on "Back"
  end

  test "updating a Rare" do
    visit rares_url
    click_on "Edit", match: :first

    fill_in "Rarity", with: @rare.rarity
    click_on "Update Rare"

    assert_text "Rare was successfully updated"
    click_on "Back"
  end

  test "destroying a Rare" do
    visit rares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rare was successfully destroyed"
  end
end
