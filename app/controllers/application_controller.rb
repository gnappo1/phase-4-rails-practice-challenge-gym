class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :invalid
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

private
  def invalid(invalid)
    render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def not_found(invalid)
    render json: { error: "#{invalid.model} Not Found" }, status: :not_found
  end

end
