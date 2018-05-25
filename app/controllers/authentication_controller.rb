class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate

  def authenticate
    auth_token = JsonWebToken.encode({})
    json_response(auth_token: auth_token)
  end
end
