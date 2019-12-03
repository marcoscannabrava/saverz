require 'test_helper'

class FieldChoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get field_choices_new_url
    assert_response :success
  end

end
