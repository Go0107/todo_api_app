class HealthController < ApplicationController
  def health
    render json: { status: "success"}
  end
end
