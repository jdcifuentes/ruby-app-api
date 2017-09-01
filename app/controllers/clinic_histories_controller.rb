class ClinicHistoriesController < ApplicationController
  before_action :set_clinic_history, only: [:show, :update, :destroy]

  # GET /clinic_histories
  def index
    @clinic_histories = ClinicHistory.all

    render json: @clinic_histories
  end

  # GET /clinic_histories/1
  def show
    render json: @clinic_history
  end

  # POST /clinic_histories
  def create
    @clinic_history = ClinicHistory.new(clinic_history_params)

    if @clinic_history.save
      render json: @clinic_history, status: :created, location: @clinic_history
    else
      render json: @clinic_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clinic_histories/1
  def update
    if @clinic_history.update(clinic_history_params)
      render json: @clinic_history
    else
      render json: @clinic_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clinic_histories/1
  def destroy
    @clinic_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_history
      @clinic_history = ClinicHistory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clinic_history_params
      params.require(:clinic_history).permit(:doctor_name, :clinic_name, :age_paciente, :diagnosis)
    end
end
