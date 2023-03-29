require "test_helper"

class PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get photos_create_url
    assert_response :success
  end

  test "should get view" do
    get photos_view_url
    assert_response :success
  end

  test "should get delete" do
    get photos_delete_url
    assert_response :success
  end
end
