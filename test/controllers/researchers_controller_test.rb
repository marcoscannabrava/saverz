require 'test_helper'

class ResearchersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get researchers_show_url
    assert_response :success
  end

end
