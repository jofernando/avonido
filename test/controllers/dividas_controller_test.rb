require 'test_helper'

class DividasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @divida = dividas(:one)
  end

  test "should get index" do
    get dividas_url
    assert_response :success
  end

  test "should get new" do
    get new_divida_url
    assert_response :success
  end

  test "should create divida" do
    assert_difference('Divida.count') do
      post dividas_url, params: { divida: { cliente_id: @divida.cliente_id, descricao: @divida.descricao, preco: @divida.preco } }
    end

    assert_redirected_to divida_url(Divida.last)
  end

  test "should show divida" do
    get divida_url(@divida)
    assert_response :success
  end

  test "should get edit" do
    get edit_divida_url(@divida)
    assert_response :success
  end

  test "should update divida" do
    patch divida_url(@divida), params: { divida: { cliente_id: @divida.cliente_id, descricao: @divida.descricao, preco: @divida.preco } }
    assert_redirected_to divida_url(@divida)
  end

  test "should destroy divida" do
    assert_difference('Divida.count', -1) do
      delete divida_url(@divida)
    end

    assert_redirected_to dividas_url
  end
end
