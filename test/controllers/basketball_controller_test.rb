require 'test_helper'

class BasketballControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basketball_index_url
    assert_response :success
  end

end
