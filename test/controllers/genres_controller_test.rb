require 'test_helper'

class GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get genres_index_url
    assert_response :success
  end

  test "should get new" do
    get genres_new_url
    assert_response :success
  end

  test "should get create" do
    get genres_create_url
    assert_response :success
  end

  test "should get show" do
    get genres_show_url
    assert_response :success
  end

end
