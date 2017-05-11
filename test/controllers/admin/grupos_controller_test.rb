require 'test_helper'

class Admin::GruposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_grupo = admin_grupos(:one)
  end

  test "should get index" do
    get admin_grupos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_grupo_url
    assert_response :success
  end

  test "should create admin_grupo" do
    assert_difference('Admin::Grupo.count') do
      post admin_grupos_url, params: { admin_grupo: { nome: @admin_grupo.nome } }
    end

    assert_redirected_to admin_grupo_url(Admin::Grupo.last)
  end

  test "should show admin_grupo" do
    get admin_grupo_url(@admin_grupo)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_grupo_url(@admin_grupo)
    assert_response :success
  end

  test "should update admin_grupo" do
    patch admin_grupo_url(@admin_grupo), params: { admin_grupo: { nome: @admin_grupo.nome } }
    assert_redirected_to admin_grupo_url(@admin_grupo)
  end

  test "should destroy admin_grupo" do
    assert_difference('Admin::Grupo.count', -1) do
      delete admin_grupo_url(@admin_grupo)
    end

    assert_redirected_to admin_grupos_url
  end
end
