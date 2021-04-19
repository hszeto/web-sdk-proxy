class LoggersController < ApplicationController
  def index
    render json: 'ok', status: 200
  end

  def create
    payload = request.body.read

    response = HTTParty.put(
      'https://client-logs-dev.gimbal.com/log/626/asdf',
      :body => payload,
      :headers => {
        'Content-Type' => 'text/plain',
        'token' => Rails.application.credentials.client_logs_dev_token,
      }
    )

    response.code == 200 \
      ? (render nothing: true, status: 200) \
      : (render nothing: true, status: 422)
  end
end
