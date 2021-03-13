require "application_system_test_case"

class ReferencesTest < ApplicationSystemTestCase
  setup do
    @reference = references(:one)
  end

  test "visiting the index" do
    visit references_url
    assert_selector "h1", text: "References"
  end

  test "creating a Reference" do
    visit references_url
    click_on "New Reference"

    fill_in "Rating", with: @reference.rating
    fill_in "Strengths and weaknesses", with: @reference.strengths_and_weaknesses
    click_on "Create Reference"

    assert_text "Reference was successfully created"
    click_on "Back"
  end

  test "updating a Reference" do
    visit references_url
    click_on "Edit", match: :first

    fill_in "Rating", with: @reference.rating
    fill_in "Strengths and weaknesses", with: @reference.strengths_and_weaknesses
    click_on "Update Reference"

    assert_text "Reference was successfully updated"
    click_on "Back"
  end

  test "destroying a Reference" do
    visit references_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reference was successfully destroyed"
  end
end
