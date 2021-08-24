require 'test_helper'

class InquiresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get inquires_new_url
    assert_response :success
  end

  test "should get create" do
    get inquires_create_url
    assert_response :success
  end

end
