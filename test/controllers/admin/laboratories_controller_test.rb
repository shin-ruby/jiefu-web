require 'test_helper'

class Admin::LaboratoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_laboratory = admin_laboratories(:one)
  end

  test "should get index" do
    get admin_laboratories_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_laboratory_url
    assert_response :success
  end

  test "should create admin_laboratory" do
    assert_difference('Admin::Laboratory.count') do
      post admin_laboratories_url, params: { admin_laboratory: {  } }
    end

    assert_redirected_to admin_laboratory_url(Admin::Laboratory.last)
  end

  test "should show admin_laboratory" do
    get admin_laboratory_url(@admin_laboratory)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_laboratory_url(@admin_laboratory)
    assert_response :success
  end

  test "should update admin_laboratory" do
    patch admin_laboratory_url(@admin_laboratory), params: { admin_laboratory: {  } }
    assert_redirected_to admin_laboratory_url(@admin_laboratory)
  end

  test "should destroy admin_laboratory" do
    assert_difference('Admin::Laboratory.count', -1) do
      delete admin_laboratory_url(@admin_laboratory)
    end

    assert_redirected_to admin_laboratories_url
  end
end
