require "test_helper"

class ParserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parser_index_url
    assert_response :success
  end

  test "should get post" do
    get parser_post_url
    assert_response :success
  end

  test "should get get" do
    get parser_get_url
    assert_response :success
  end
end
