require 'test_helper'

class GruposControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grupos_index_url
    assert_response :success
  end

end
