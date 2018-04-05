class UserPrescriptionsController < ApplicationController
  before_action :set_user_prescription, only: [:show, :update, :destroy]

  # GET /user_prescriptions
  def index
    @user_prescriptions = UserPrescription.all

    render json: @user_prescriptions
  end

  # GET /user_prescriptions/1
  def show
    render json: @user_prescription
  end

  # POST /user_prescriptions
  def create
    @user_prescription = UserPrescription.new(user_prescription_params)

    if @user_prescription.save
      render json: @user_prescription, status: :created, location: @user_prescription
    else
      render json: @user_prescription.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_prescriptions/1
  def update
    if @user_prescription.update(user_prescription_params)
      render json: @user_prescription
    else
      render json: @user_prescription.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_prescriptions/1
  def destroy
    @user_prescription.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_prescription
      @user_prescription = UserPrescription.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_prescription_params
      params.fetch(:user_prescription, {})
    end
end
