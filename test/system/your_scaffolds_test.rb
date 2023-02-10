require "application_system_test_case"

class YourScaffoldsTest < ApplicationSystemTestCase
  setup do
    @your_scaffold = your_scaffolds(:one)
  end

  test "visiting the index" do
    visit your_scaffolds_url
    assert_selector "h1", text: "Your scaffolds"
  end

  test "should create your scaffold" do
    visit your_scaffolds_url
    click_on "New your scaffold"

    fill_in "Mystring", with: @your_scaffold.mystring
    click_on "Create Your scaffold"

    assert_text "Your scaffold was successfully created"
    click_on "Back"
  end

  test "should update Your scaffold" do
    visit your_scaffold_url(@your_scaffold)
    click_on "Edit this your scaffold", match: :first

    fill_in "Mystring", with: @your_scaffold.mystring
    click_on "Update Your scaffold"

    assert_text "Your scaffold was successfully updated"
    click_on "Back"
  end

  test "should destroy Your scaffold" do
    visit your_scaffold_url(@your_scaffold)
    click_on "Destroy this your scaffold", match: :first

    assert_text "Your scaffold was successfully destroyed"
  end
end
