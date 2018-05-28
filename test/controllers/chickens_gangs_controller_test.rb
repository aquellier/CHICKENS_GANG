require 'test_helper'

class ChickensGangsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chickens_gangs_index_url
    assert_response :success
  end

  test "should get show" do
    get chickens_gangs_show_url
    assert_response :success
  end

  test "should get new" do
    get chickens_gangs_new_url
    assert_response :success
  end

  test "should get create" do
    get chickens_gangs_create_url
    assert_response :success
  end

  test "should get edit" do
    get chickens_gangs_edit_url
    assert_response :success
  end

  test "should get update" do
    get chickens_gangs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get chickens_gangs_destroy_url
    assert_response :success
  end

end
