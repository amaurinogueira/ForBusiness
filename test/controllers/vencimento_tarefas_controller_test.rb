require 'test_helper'

class VencimentoTarefasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vencimento_tarefa = vencimento_tarefas(:one)
  end

  test "should get index" do
    get vencimento_tarefas_url
    assert_response :success
  end

  test "should get new" do
    get new_vencimento_tarefa_url
    assert_response :success
  end

  test "should create vencimento_tarefa" do
    assert_difference('VencimentoTarefa.count') do
      post vencimento_tarefas_url, params: { vencimento_tarefa: { dataVencimento: @vencimento_tarefa.dataVencimento } }
    end

    assert_redirected_to vencimento_tarefa_url(VencimentoTarefa.last)
  end

  test "should show vencimento_tarefa" do
    get vencimento_tarefa_url(@vencimento_tarefa)
    assert_response :success
  end

  test "should get edit" do
    get edit_vencimento_tarefa_url(@vencimento_tarefa)
    assert_response :success
  end

  test "should update vencimento_tarefa" do
    patch vencimento_tarefa_url(@vencimento_tarefa), params: { vencimento_tarefa: { dataVencimento: @vencimento_tarefa.dataVencimento } }
    assert_redirected_to vencimento_tarefa_url(@vencimento_tarefa)
  end

  test "should destroy vencimento_tarefa" do
    assert_difference('VencimentoTarefa.count', -1) do
      delete vencimento_tarefa_url(@vencimento_tarefa)
    end

    assert_redirected_to vencimento_tarefas_url
  end
end
