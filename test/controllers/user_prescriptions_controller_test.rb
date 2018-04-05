require 'test_helper'

class UserPrescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_prescription = user_prescriptions(:one)
  end

  test "should get index" do
    get user_prescriptions_url, as: :json
    assert_response :success
  end

  test "should create user_prescription" do
    assert_difference('UserPrescription.count') do
      post user_prescriptions_url, params: { user_prescription: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_prescription" do
    get user_prescription_url(@user_prescription), as: :json
    assert_response :success
  end

  test "should update user_prescription" do
    patch user_prescription_url(@user_prescription), params: { user_prescription: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_prescription" do
    assert_difference('UserPrescription.count', -1) do
      delete user_prescription_url(@user_prescription), as: :json
    end

    assert_response 204
  end
end
