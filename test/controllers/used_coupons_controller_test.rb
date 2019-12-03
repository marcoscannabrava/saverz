require 'test_helper'

class UsedCouponsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get used_coupons_index_url
    assert_response :success
  end

end
