require 'test_helper'

class BelongsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get belongs_create_url
    assert_response :success
  end

end
