class ParksController < ApplicationController
  def index
    @parks = 
    parks_json_response(@parks)
  end
end