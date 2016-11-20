require 'test_helper'

class ConcertsUtilisateurControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get concerts_utilisateur_index_url
    assert_response :success
  end

  test "should get show" do
    get concerts_utilisateur_show_url
    assert_response :success
  end

end
