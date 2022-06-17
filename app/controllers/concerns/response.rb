module Response
  def parks_json_response(object, status = :ok)
    render json: object.to_json(include: :climbs), status:status
  end

  def climbs_json_response(object, status = :ok)
    render json: object, status: status
  end
end