require "test_helper"

class MotherPetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mother_pets_index_url
    assert_response :success
  end

  test "should get show" do
    get mother_pets_show_url
    assert_response :success
  end

  test "should get new" do
    get mother_pets_new_url
    assert_response :success
  end

  test "should get edit" do
    get mother_pets_edit_url
    assert_response :success
  end
end
