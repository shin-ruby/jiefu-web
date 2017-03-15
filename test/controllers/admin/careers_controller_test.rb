require 'test_helper'

class Admin::CareersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_career = admin_careers(:one)
  end

  test "should get index" do
    get admin_careers_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_career_url
    assert_response :success
  end

  test "should create admin_career" do
    assert_difference('Admin::Career.count') do
      post admin_careers_url, params: { admin_career: {  } }
    end

    assert_redirected_to admin_career_url(Admin::Career.last)
  end

  test "should show admin_career" do
    get admin_career_url(@admin_career)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_career_url(@admin_career)
    assert_response :success
  end

  test "should update admin_career" do
    patch admin_career_url(@admin_career), params: { admin_career: {  } }
    assert_redirected_to admin_career_url(@admin_career)
  end

  test "should destroy admin_career" do
    assert_difference('Admin::Career.count', -1) do
      delete admin_career_url(@admin_career)
    end

    assert_redirected_to admin_careers_url
  end
end
