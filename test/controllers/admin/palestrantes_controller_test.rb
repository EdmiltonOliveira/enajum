require 'test_helper'

class Admin::PalestrantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_palestrante = admin_palestrantes(:one)
  end

  test "should get index" do
    get admin_palestrantes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_palestrante_url
    assert_response :success
  end

  test "should create admin_palestrante" do
    assert_difference('Admin::Palestrante.count') do
      post admin_palestrantes_url, params: { admin_palestrante: { email: @admin_palestrante.email, instituicao: @admin_palestrante.instituicao, nome: @admin_palestrante.nome, telefones: @admin_palestrante.telefones } }
    end

    assert_redirected_to admin_palestrante_url(Admin::Palestrante.last)
  end

  test "should show admin_palestrante" do
    get admin_palestrante_url(@admin_palestrante)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_palestrante_url(@admin_palestrante)
    assert_response :success
  end

  test "should update admin_palestrante" do
    patch admin_palestrante_url(@admin_palestrante), params: { admin_palestrante: { email: @admin_palestrante.email, instituicao: @admin_palestrante.instituicao, nome: @admin_palestrante.nome, telefones: @admin_palestrante.telefones } }
    assert_redirected_to admin_palestrante_url(@admin_palestrante)
  end

  test "should destroy admin_palestrante" do
    assert_difference('Admin::Palestrante.count', -1) do
      delete admin_palestrante_url(@admin_palestrante)
    end

    assert_redirected_to admin_palestrantes_url
  end
end
