require 'test_helper'

class CareRecordControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get care_record_index_url
    assert_response :success
  end

end
