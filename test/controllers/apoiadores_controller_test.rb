require 'test_helper'

class ApoiadoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apoiadores_index_url
    assert_response :success
  end

end
