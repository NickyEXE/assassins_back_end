require 'test_helper'

class UserssControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get userss_index_url
    assert_response :success
  end

end
