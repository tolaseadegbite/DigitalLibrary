require "test_helper"

class ResourceTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resource_types_index_url
    assert_response :success
  end

  test "should get show" do
    get resource_types_show_url
    assert_response :success
  end
end
