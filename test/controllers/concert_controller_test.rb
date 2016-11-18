require 'test_helper'

class ConcertControllerTest < ActionDispatch::IntegrationTest
  test "should get afficher" do
    get concert_afficher_url
    assert_response :success
  end

  test "should get nouveau" do
    get concert_nouveau_url
    assert_response :success
  end

  test "should get creer" do
    get concert_creer_url
    assert_response :success
  end

end
