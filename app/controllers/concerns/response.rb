module Response
  def parks_json_response(object, status = :ok)
    render json: object.to_json(include: :sport_climbs, :trad_climbs), status:status
  end
end