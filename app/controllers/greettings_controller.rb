class GreettingsController < ApplicationController
  # GET /greettings
  def index
    surprise = Greetting.find(Greetting.pluck(:id).sample)
    render json: surprise
  end
end
