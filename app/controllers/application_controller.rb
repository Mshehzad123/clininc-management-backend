class ApplicationController < ActionController::API
  before_action :authenticate_api_key!

  private

  def authenticate_api_key!
    api_key = request.headers["X-API-KEY"]
    Rails.logger.info "API key received: #{api_key ? 'present' : 'missing'}"
    unless api_key && api_key == ENV["CLINIC_API_KEY"]
      Rails.logger.warn "Unauthorized access attempt - API key mismatch"
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end
end
