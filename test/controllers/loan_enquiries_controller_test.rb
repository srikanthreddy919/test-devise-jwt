require "test_helper"

class LoanEnquiriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan_enquiry = loan_enquiries(:one)
  end

  test "should get index" do
    get loan_enquiries_url, as: :json
    assert_response :success
  end

  test "should create loan_enquiry" do
    assert_difference('LoanEnquiry.count') do
      post loan_enquiries_url, params: { loan_enquiry: { company_name: @loan_enquiry.company_name, dob: @loan_enquiry.dob, email: @loan_enquiry.email, employment_type: @loan_enquiry.employment_type, full_name: @loan_enquiry.full_name, gender: @loan_enquiry.gender, mobile_number: @loan_enquiry.mobile_number, monthly_in_hand_salary: @loan_enquiry.monthly_in_hand_salary, pan_number: @loan_enquiry.pan_number, pincode: @loan_enquiry.pincode } }, as: :json
    end

    assert_response 201
  end

  test "should show loan_enquiry" do
    get loan_enquiry_url(@loan_enquiry), as: :json
    assert_response :success
  end

  test "should update loan_enquiry" do
    patch loan_enquiry_url(@loan_enquiry), params: { loan_enquiry: { company_name: @loan_enquiry.company_name, dob: @loan_enquiry.dob, email: @loan_enquiry.email, employment_type: @loan_enquiry.employment_type, full_name: @loan_enquiry.full_name, gender: @loan_enquiry.gender, mobile_number: @loan_enquiry.mobile_number, monthly_in_hand_salary: @loan_enquiry.monthly_in_hand_salary, pan_number: @loan_enquiry.pan_number, pincode: @loan_enquiry.pincode } }, as: :json
    assert_response 200
  end

  test "should destroy loan_enquiry" do
    assert_difference('LoanEnquiry.count', -1) do
      delete loan_enquiry_url(@loan_enquiry), as: :json
    end

    assert_response 204
  end
end
