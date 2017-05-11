require 'test_helper'

class InscritosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inscritos_index_url
    assert_response :success
  end

end
