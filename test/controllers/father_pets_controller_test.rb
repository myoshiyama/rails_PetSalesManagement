require "test_helper"

class FatherPetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get father_pets_index_url
    assert_response :success
  end

  test "should get show" do
    get father_pets_show_url
    assert_response :success
  end

  test "should get new" do
    get father_pets_new_url
    assert_response :success
  end

  test "should get edit" do
    get father_pets_edit_url
    assert_response :success
  end
end
