require "application_system_test_case"

class BoxesTest < ApplicationSystemTestCase
  setup do
    @box = boxes(:one)
  end

  test "visiting the index" do
    visit boxes_url
    assert_selector "h1", text: "Boxes"
  end

  test "creating a Box" do
    visit boxes_url
    click_on "New Box"

    fill_in "Name", with: @box.name
    fill_in "Place", with: @box.place
    fill_in "Release", with: @box.release
    click_on "Create Box"

    assert_text "Box was successfully created"
    click_on "Back"
  end

  test "updating a Box" do
    visit boxes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @box.name
    fill_in "Place", with: @box.place
    fill_in "Release", with: @box.release
    click_on "Update Box"

    assert_text "Box was successfully updated"
    click_on "Back"
  end

  test "destroying a Box" do
    visit boxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Box was successfully destroyed"
  end
end
