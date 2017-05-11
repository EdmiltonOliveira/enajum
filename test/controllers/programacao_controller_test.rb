require 'test_helper'

class ProgramacaoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get programacao_index_url
    assert_response :success
  end

end
