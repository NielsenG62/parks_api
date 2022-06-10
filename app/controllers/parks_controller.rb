class ParksController < ApplicationController
  def index
    @parks = Park.all
    parks_json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    parks_json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    parks_json_response(@park)
  end

  def update
    @park = Park.find(params[:park_id])
    @park.update(park_params)
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
  end

  private
  def park_params
    params.permit(:park_name, :park_city)
  end
end