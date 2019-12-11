require 'test_helper'

class SupportedChoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get supported_choices_new_url
    assert_response :success
  end

  test "should get create" do
    get supported_choices_create_url
    assert_response :success
  end

end
