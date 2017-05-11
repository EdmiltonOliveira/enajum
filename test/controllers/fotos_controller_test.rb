require 'test_helper'

class FotosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fotos_index_url
    assert_response :success
  end

end
