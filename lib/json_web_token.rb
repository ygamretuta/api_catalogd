# frozen_string_literal: true

class JsonWebToken
  def self.verify(token)
    JWT.decode(token, nil,
      true,
      algorithm: 'RS256',
      iss: Rails.application.secrets.auth0_domain,
      verify_iss: true,
      aud: Rails.application.secrets.auth0_api_audience,
      verify_aud: true) do |header|
        jwks_hash[header['kid']]
      end
  end

  def self.jwks_hash
    jwks_raw = Net::HTTP.get URI("#{Rails.application.secrets.auth0_domain}")
    jwks_keys = Array(JSON.parse(jwks_raw)['keys'])
    Hash[
      jwks_keys
      .map do |k|
        [
          k['kid'],
          OpenSSL::X509::Certificate.new(
            Base64.decode64(k['x5c'].first)
          ).public
        ]
      end
    ]
  end
end
