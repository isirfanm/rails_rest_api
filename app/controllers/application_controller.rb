class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def not_destroyed(e)
    # s = File.open("others/errors.json").read
    # Rails.logger.info s
    render json: {errors: e.record.errors}, status: :unprocessable_entity
  end

  def not_found(e)
    render json: {}, status: :not_found
  end
end
