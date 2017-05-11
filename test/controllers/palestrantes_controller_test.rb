require 'test_helper'

class PalestrantesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get palestrantes_index_url
    assert_response :success
  end

end
