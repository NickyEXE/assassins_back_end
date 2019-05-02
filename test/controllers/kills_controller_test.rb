require 'test_helper'

class KillsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kills_index_url
    assert_response :success
  end

end
