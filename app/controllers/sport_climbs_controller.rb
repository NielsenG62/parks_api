class SportClimbsController < ApplicationController
  def index
    @park = Park.find(params[:park_id])
    climbs_json_response(@park.sport_climbs)
  end

  def show
    @park = Park.find(params[:park_id])
    @sport_climb = SportClimb.find(params[:id])
    climbs_json_response(@sport_climb)
  end

  def create
    @park = Park.find(params[:park_id])
    @sport_climb = SportClimb.create!(climb_params)
    climbs_json_response(@sport_climb)
  end

  def update
    @park = Park.find(params[:park_id])
    @sport_climb = SportClimb.find(params[:id])
    @sport_climb.update(climb_params)
    climbs_json_response(@sport_climb)
  end

  def destroy
    @park = Park.find(params[:park_id])
    @sport_climb = SportClimb.find(params[:id])
    @sport_climb.destroy
    climbs_json_response(@sport_climb)
  end

  private
  def climb_params
    params.permit(:climb_name, :climb_grade, :climb_pitches, :climb_height_feet, :park_id)
  end
end