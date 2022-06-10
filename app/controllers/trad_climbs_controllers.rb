class tradClimbsController < ApplicationController
  def index
    @park = Park.find(params[:park_id])
    climbs_json_response(@parks.trad_climbs)
  end

  def show
    @park = Park.find(params[:park_id])
    @trad_climb = TradClimb.find(params[:id])
    climbs_json_response(@trad_climb)
  end

  def create
    @park = Park.find(params[:park_id])
    @trad_climb = TradClimb.create!(climb_params)
    climbs_json_response(@trad_climb)
  end

  def update
    @park = Park.find(params[:park_id])
    @trad_climb = TradClimb.find(params[:id])
    @trad_climb.update(climb_params)
  end

  def destroy
    @park = Park.find(params[:park_id])
    @trad_climb = TradClimb.find(params[:id])
    @trad_climb.destroy
  end

  private
  def climb_params
    params.permit(:climb_name, :climb_grade, :climb_pitches, :climb_height_feet)
  end
end