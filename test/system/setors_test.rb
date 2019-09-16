require "application_system_test_case"

class SetorsTest < ApplicationSystemTestCase
  setup do
    @setor = setors(:one)
  end

  test "visiting the index" do
    visit setors_url
    assert_selector "h1", text: "Setors"
  end

  test "creating a Setor" do
    visit setors_url
    click_on "New Setor"

    fill_in "Nomesetor", with: @setor.nomeSetor
    fill_in "Siglasetor", with: @setor.siglaSetor
    click_on "Create Setor"

    assert_text "Setor was successfully created"
    click_on "Back"
  end

  test "updating a Setor" do
    visit setors_url
    click_on "Edit", match: :first

    fill_in "Nomesetor", with: @setor.nomeSetor
    fill_in "Siglasetor", with: @setor.siglaSetor
    click_on "Update Setor"

    assert_text "Setor was successfully updated"
    click_on "Back"
  end

  test "destroying a Setor" do
    visit setors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Setor was successfully destroyed"
  end
end
