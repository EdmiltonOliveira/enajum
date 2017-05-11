require 'test_helper'

class Admin::InscritosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_inscrito = admin_inscritos(:one)
  end

  test "should get index" do
    get admin_inscritos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_inscrito_url
    assert_response :success
  end

  test "should create admin_inscrito" do
    assert_difference('Admin::Inscrito.count') do
      post admin_inscritos_url, params: { admin_inscrito: { bairro: @admin_inscrito.bairro, celular: @admin_inscrito.celular, cep: @admin_inscrito.cep, cidade: @admin_inscrito.cidade, complemento: @admin_inscrito.complemento, endereco: @admin_inscrito.endereco, estado: @admin_inscrito.estado, fone: @admin_inscrito.fone, nome: @admin_inscrito.nome } }
    end

    assert_redirected_to admin_inscrito_url(Admin::Inscrito.last)
  end

  test "should show admin_inscrito" do
    get admin_inscrito_url(@admin_inscrito)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_inscrito_url(@admin_inscrito)
    assert_response :success
  end

  test "should update admin_inscrito" do
    patch admin_inscrito_url(@admin_inscrito), params: { admin_inscrito: { bairro: @admin_inscrito.bairro, celular: @admin_inscrito.celular, cep: @admin_inscrito.cep, cidade: @admin_inscrito.cidade, complemento: @admin_inscrito.complemento, endereco: @admin_inscrito.endereco, estado: @admin_inscrito.estado, fone: @admin_inscrito.fone, nome: @admin_inscrito.nome } }
    assert_redirected_to admin_inscrito_url(@admin_inscrito)
  end

  test "should destroy admin_inscrito" do
    assert_difference('Admin::Inscrito.count', -1) do
      delete admin_inscrito_url(@admin_inscrito)
    end

    assert_redirected_to admin_inscritos_url
  end
end
