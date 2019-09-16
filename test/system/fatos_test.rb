require "application_system_test_case"

class FatosTest < ApplicationSystemTestCase
  setup do
    @fato = fatos(:one)
  end

  test "visiting the index" do
    visit fatos_url
    assert_selector "h1", text: "Fatos"
  end

  test "creating a Fato" do
    visit fatos_url
    click_on "New Fato"

    fill_in "Datafinalizacao", with: @fato.dataFinalizacao
    fill_in "Logcolaborador", with: @fato.logColaborador
    fill_in "Statusfato", with: @fato.statusFato
    click_on "Create Fato"

    assert_text "Fato was successfully created"
    click_on "Back"
  end

  test "updating a Fato" do
    visit fatos_url
    click_on "Edit", match: :first

    fill_in "Datafinalizacao", with: @fato.dataFinalizacao
    fill_in "Logcolaborador", with: @fato.logColaborador
    fill_in "Statusfato", with: @fato.statusFato
    click_on "Update Fato"

    assert_text "Fato was successfully updated"
    click_on "Back"
  end

  test "destroying a Fato" do
    visit fatos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fato was successfully destroyed"
  end
end
