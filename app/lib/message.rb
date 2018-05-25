class Message

  def self.invalid_token
    'Invalid token'
  end

  def self.missing_token
    'Missing token'
  end

  def self.unauthorized
    'Unauthorized request'
  end

  def self.expired_token
    'Sorry, your token has expired. Please login to continue.'
  end
end
