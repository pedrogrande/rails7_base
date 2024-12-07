require "application_system_test_case"

class ValueFactorsTest < ApplicationSystemTestCase
  setup do
    @value_factor = value_factors(:one)
  end

  test "visiting the index" do
    visit value_factors_url
    assert_selector "h1", text: "Value factors"
  end

  test "should create value factor" do
    visit value_factors_url
    click_on "New value factor"

    fill_in "Criteria", with: @value_factor.criteria
    fill_in "Description", with: @value_factor.description
    fill_in "Name", with: @value_factor.name
    click_on "Create Value factor"

    assert_text "Value factor was successfully created"
    click_on "Back"
  end

  test "should update Value factor" do
    visit value_factor_url(@value_factor)
    click_on "Edit this value factor", match: :first

    fill_in "Criteria", with: @value_factor.criteria
    fill_in "Description", with: @value_factor.description
    fill_in "Name", with: @value_factor.name
    click_on "Update Value factor"

    assert_text "Value factor was successfully updated"
    click_on "Back"
  end

  test "should destroy Value factor" do
    visit value_factor_url(@value_factor)
    click_on "Destroy this value factor", match: :first

    assert_text "Value factor was successfully destroyed"
  end
end
