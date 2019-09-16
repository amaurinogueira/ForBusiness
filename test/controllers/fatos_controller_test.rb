require 'test_helper'

class FatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fato = fatos(:one)
  end

  test "should get index" do
    get fatos_url
    assert_response :success
  end

  test "should get new" do
    get new_fato_url
    assert_response :success
  end

  test "should create fato" do
    assert_difference('Fato.count') do
      post fatos_url, params: { fato: { dataFinalizacao: @fato.dataFinalizacao, logColaborador: @fato.logColaborador, statusFato: @fato.statusFato } }
    end

    assert_redirected_to fato_url(Fato.last)
  end

  test "should show fato" do
    get fato_url(@fato)
    assert_response :success
  end

  test "should get edit" do
    get edit_fato_url(@fato)
    assert_response :success
  end

  test "should update fato" do
    patch fato_url(@fato), params: { fato: { dataFinalizacao: @fato.dataFinalizacao, logColaborador: @fato.logColaborador, statusFato: @fato.statusFato } }
    assert_redirected_to fato_url(@fato)
  end

  test "should destroy fato" do
    assert_difference('Fato.count', -1) do
      delete fato_url(@fato)
    end

    assert_redirected_to fatos_url
  end
end
