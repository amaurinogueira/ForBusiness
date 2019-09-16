require "application_system_test_case"

class ColaboradorsTest < ApplicationSystemTestCase
  setup do
    @colaborador = colaboradors(:one)
  end

  test "visiting the index" do
    visit colaboradors_url
    assert_selector "h1", text: "Colaboradors"
  end

  test "creating a Colaborador" do
    visit colaboradors_url
    click_on "New Colaborador"

    fill_in "Cpfcolaborador", with: @colaborador.cpfColaborador
    fill_in "Ctpscolaborador", with: @colaborador.ctpsColaborador
    fill_in "Nomecolaborador", with: @colaborador.nomeColaborador
    fill_in "Tipocolaborador", with: @colaborador.tipoColaborador
    click_on "Create Colaborador"

    assert_text "Colaborador was successfully created"
    click_on "Back"
  end

  test "updating a Colaborador" do
    visit colaboradors_url
    click_on "Edit", match: :first

    fill_in "Cpfcolaborador", with: @colaborador.cpfColaborador
    fill_in "Ctpscolaborador", with: @colaborador.ctpsColaborador
    fill_in "Nomecolaborador", with: @colaborador.nomeColaborador
    fill_in "Tipocolaborador", with: @colaborador.tipoColaborador
    click_on "Update Colaborador"

    assert_text "Colaborador was successfully updated"
    click_on "Back"
  end

  test "destroying a Colaborador" do
    visit colaboradors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colaborador was successfully destroyed"
  end
end
