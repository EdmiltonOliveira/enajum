require 'test_helper'

class RealizadoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get realizadores_index_url
    assert_response :success
  end

end
