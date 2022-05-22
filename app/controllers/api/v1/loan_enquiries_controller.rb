class Api::V1::LoanEnquiriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_loan_enquiry, only: [:show, :update, :destroy]

  # GET /loan_enquiries
  def index
    @loan_enquiries = LoanEnquiry.all

    render json: @loan_enquiries
  end

  # GET /loan_enquiries/1
  def show
    render json: @loan_enquiry
  end

  # POST /loan_enquiries
  def create
    @loan_enquiry = LoanEnquiry.new(loan_enquiry_params)

    if @loan_enquiry.save
      render json: @loan_enquiry, status: :created, location: @loan_enquiry
    else
      render json: @loan_enquiry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loan_enquiries/1
  def update
    if @loan_enquiry.update(loan_enquiry_params)
      render json: @loan_enquiry
    else
      render json: @loan_enquiry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /loan_enquiries/1
  def destroy
    @loan_enquiry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_enquiry
      @loan_enquiry = LoanEnquiry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loan_enquiry_params
      params.require(:loan_enquiry).permit(:full_name, :gender, :dob, :employment_type, :company_name, :monthly_in_hand_salary, :pincode, :pan_number, :mobile_number, :email)
    end
end
