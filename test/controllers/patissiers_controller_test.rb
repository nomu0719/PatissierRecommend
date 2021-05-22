require 'test_helper'

class PatissiersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get patissiers_show_url
    assert_response :success
  end

end
