require "application_system_test_case"

class TarefasTest < ApplicationSystemTestCase
  setup do
    @tarefa = tarefas(:one)
  end

  test "visiting the index" do
    visit tarefas_url
    assert_selector "h1", text: "Tarefas"
  end

  test "creating a Tarefa" do
    visit tarefas_url
    click_on "New Tarefa"

    fill_in "Desctarefa", with: @tarefa.descTarefa
    fill_in "Diavencimento", with: @tarefa.diaVencimento
    click_on "Create Tarefa"

    assert_text "Tarefa was successfully created"
    click_on "Back"
  end

  test "updating a Tarefa" do
    visit tarefas_url
    click_on "Edit", match: :first

    fill_in "Desctarefa", with: @tarefa.descTarefa
    fill_in "Diavencimento", with: @tarefa.diaVencimento
    click_on "Update Tarefa"

    assert_text "Tarefa was successfully updated"
    click_on "Back"
  end

  test "destroying a Tarefa" do
    visit tarefas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tarefa was successfully destroyed"
  end
end
