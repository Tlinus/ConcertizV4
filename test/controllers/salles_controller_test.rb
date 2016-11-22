require 'test_helper'

class SallesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get salles_new_url
    assert_response :success
  end

  test "should get create" do
    get salles_create_url
    assert_response :success
  end

  test "should get show" do
    get salles_show_url
    assert_response :success
  end

  test "should get updtae" do
    get salles_updtae_url
    assert_response :success
  end

end
