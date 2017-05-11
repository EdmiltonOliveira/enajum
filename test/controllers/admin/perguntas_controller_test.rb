require 'test_helper'

class Admin::PerguntasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_pergunta = admin_perguntas(:one)
  end

  test "should get index" do
    get admin_perguntas_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_pergunta_url
    assert_response :success
  end

  test "should create admin_pergunta" do
    assert_difference('Admin::Pergunta.count') do
      post admin_perguntas_url, params: { admin_pergunta: { pergunta: @admin_pergunta.pergunta } }
    end

    assert_redirected_to admin_pergunta_url(Admin::Pergunta.last)
  end

  test "should show admin_pergunta" do
    get admin_pergunta_url(@admin_pergunta)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_pergunta_url(@admin_pergunta)
    assert_response :success
  end

  test "should update admin_pergunta" do
    patch admin_pergunta_url(@admin_pergunta), params: { admin_pergunta: { pergunta: @admin_pergunta.pergunta } }
    assert_redirected_to admin_pergunta_url(@admin_pergunta)
  end

  test "should destroy admin_pergunta" do
    assert_difference('Admin::Pergunta.count', -1) do
      delete admin_pergunta_url(@admin_pergunta)
    end

    assert_redirected_to admin_perguntas_url
  end
end
