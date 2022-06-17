class TradClimbsController < ApplicationController
  def index
    @park = Park.find(params[:park_id])
    climbs_json_response(@park.climbs.trad_climb)
  end

  def show
    @park = Park.find(params[:park_id])
    @trad_climb = Climb.where(id: params[:id], climb_type: 'Trad')
    climbs_json_response(@park.climbs.trad_climb)
  end

  def create
    @park = Park.find(params[:park_id])
    @trad_climb = Climb.create!(climb_params)
    @trad_climb.update(climb_type: 'Trad')
    climbs_json_response(@park.climbs.trad_climb)
  end

  def update
    @park = Park.find(params[:park_id])
    @trad_climb = Climb.find(params[:id])
    @trad_climb.update(climb_params)
    climbs_json_response(@park.climbs.trad_climb)
  end

  def destroy
    @park = Park.find(params[:park_id])
    @trad_climb = Climb.find(params[:id])
    @trad_climb.destroy
    climbs_json_response(@park.climbs.trad_climb)
  end

  private
  def climb_params
    params.permit(:climb_name, :climb_grade, :climb_pitches, :climb_height_feet, :park_id)
  end
end