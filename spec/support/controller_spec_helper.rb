module ControllerSpecHelper
  def token_generator()
    JsonWebToken.encode({})
  end

  def expired_token_generator()
    JsonWebToken.encode({ }, (Time.now.to_i - 10))
  end

  # return valid headers
  def valid_headers
    {
      "Authorization" => token_generator(),
      "Content-Type" => "application/json"
    }
  end

  # return invalid headers
  def invalid_headers
    {
      "Authorization" => nil,
      "Content-Type" => "application/json"
    }
  end
end
