class GreettingsController < ApplicationController
  # GET /greettings
  def index
    @greetting = Greetting.find(Greetting.pluck(:id).sample)
    # @greetting = Greetting.all
    render json: @greetting, status: :created
  end
end
