require "test_helper"

class BreedingPetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get breeding_pets_index_url
    assert_response :success
  end

  test "should get show" do
    get breeding_pets_show_url
    assert_response :success
  end

  test "should get new" do
    get breeding_pets_new_url
    assert_response :success
  end

  test "should get edit" do
    get breeding_pets_edit_url
    assert_response :success
  end
end
