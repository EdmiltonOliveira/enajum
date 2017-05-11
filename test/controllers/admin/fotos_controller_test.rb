require 'test_helper'

class Admin::FotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_foto = admin_fotos(:one)
  end

  test "should get index" do
    get admin_fotos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_foto_url
    assert_response :success
  end

  test "should create admin_foto" do
    assert_difference('Admin::Foto.count') do
      post admin_fotos_url, params: { admin_foto: { descricao: @admin_foto.descricao } }
    end

    assert_redirected_to admin_foto_url(Admin::Foto.last)
  end

  test "should show admin_foto" do
    get admin_foto_url(@admin_foto)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_foto_url(@admin_foto)
    assert_response :success
  end

  test "should update admin_foto" do
    patch admin_foto_url(@admin_foto), params: { admin_foto: { descricao: @admin_foto.descricao } }
    assert_redirected_to admin_foto_url(@admin_foto)
  end

  test "should destroy admin_foto" do
    assert_difference('Admin::Foto.count', -1) do
      delete admin_foto_url(@admin_foto)
    end

    assert_redirected_to admin_fotos_url
  end
end
