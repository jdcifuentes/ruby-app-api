class PacientsController < ApplicationController
  before_action :set_pacient, only: [:show, :update, :destroy]

  # GET /pacients
  def index
    @pacients = Pacient.all

    render json: @pacients
  end

  # GET /pacients/1
  def show
    render json: @pacient
  end

  # POST /pacients
  def create
    @pacient = Pacient.new(pacient_params)

    if @pacient.save
      render json: @pacient, status: :created, location: @pacient
    else
      render json: @pacient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pacients/1
  def update
    if @pacient.update(pacient_params)
      render json: @pacient
    else
      render json: @pacient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pacients/1
  def destroy
    @pacient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacient
      @pacient = Pacient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pacient_params
      params.require(:pacient).permit(:name, :lastname, :din, :email)
    end
end
