require "application_system_test_case"

class VencimentoTarefasTest < ApplicationSystemTestCase
  setup do
    @vencimento_tarefa = vencimento_tarefas(:one)
  end

  test "visiting the index" do
    visit vencimento_tarefas_url
    assert_selector "h1", text: "Vencimento Tarefas"
  end

  test "creating a Vencimento tarefa" do
    visit vencimento_tarefas_url
    click_on "New Vencimento Tarefa"

    fill_in "Datavencimento", with: @vencimento_tarefa.dataVencimento
    click_on "Create Vencimento tarefa"

    assert_text "Vencimento tarefa was successfully created"
    click_on "Back"
  end

  test "updating a Vencimento tarefa" do
    visit vencimento_tarefas_url
    click_on "Edit", match: :first

    fill_in "Datavencimento", with: @vencimento_tarefa.dataVencimento
    click_on "Update Vencimento tarefa"

    assert_text "Vencimento tarefa was successfully updated"
    click_on "Back"
  end

  test "destroying a Vencimento tarefa" do
    visit vencimento_tarefas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vencimento tarefa was successfully destroyed"
  end
end
