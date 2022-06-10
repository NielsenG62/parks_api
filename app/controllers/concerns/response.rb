module Response
  def parks_json_response(object, status = :ok)
    render json: object, status:status
  end
end