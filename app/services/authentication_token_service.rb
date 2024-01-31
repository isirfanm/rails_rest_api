class AuthenticationTokenService
  HMAC_SECRET = 'my$ecretK3y'
  ALGORITHM = 'HS256'

  def self.call
    payload = {'test' => 'blah'}

    JWT.encode payload, HMAC_SECRET, ALGORITHM
  end
end
