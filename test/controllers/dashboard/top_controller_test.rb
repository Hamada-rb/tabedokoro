require 'test_helper'

class Dashboard::TopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_top_index_url
    assert_response :success
  end

end
