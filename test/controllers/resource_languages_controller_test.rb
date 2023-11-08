require "test_helper"

class ResourceLanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resource_languages_index_url
    assert_response :success
  end

  test "should get show" do
    get resource_languages_show_url
    assert_response :success
  end
end
