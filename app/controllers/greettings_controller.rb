class GreettingsController < ApplicationController
  before_action :set_greetting, only: %i[ show update destroy ]

  # GET /greettings
  def index
    @greettings = Greetting.all

    render json: @greettings
  end

  # GET /greettings/1
  def show
    render json: @greetting
  end

  # POST /greettings
  def create
    @greetting = Greetting.new(greetting_params)

    if @greetting.save
      render json: @greetting, status: :created, location: @greetting
    else
      render json: @greetting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /greettings/1
  def update
    if @greetting.update(greetting_params)
      render json: @greetting
    else
      render json: @greetting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /greettings/1
  def destroy
    @greetting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_greetting
      @greetting = Greetting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def greetting_params
      params.require(:greetting).permit(:text)
    end
end
