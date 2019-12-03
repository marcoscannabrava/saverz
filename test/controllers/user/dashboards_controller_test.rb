require 'test_helper'

class User::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_dashboards_show_url
    assert_response :success
  end

end
