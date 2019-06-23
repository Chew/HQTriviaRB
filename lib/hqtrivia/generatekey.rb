# Require the errors file
require_relative 'errors'

# The user themselves
class HQTrivia::GenerateKey
  # Get that auth key!
  # @param country_code [Integer] the country code of your number, blank for 1
  # @param phone [String] the phone actual number
  # @param method [String] the type of verification method
  def initialize(country_code: 1, phone: nil, method: "sms")
    data = {
      "method" => method,
      "phone" => "+#{country_code}#{phone}"
    }
    @data = JSON.parse(RestClient.post('https://api-quiz.hype.space/verifications', data, 'x-hq-client': 'iOS/1.4.15 b146', 'Content-Type': :json))

    @auth = nil

    @id = @data['verificationId']
    @retry = Time.now + 20
    @expires = Time.parse(@data['expires'])
    @verified = false
  rescue RestClient::BadRequest
    raise HQTrivia::Errors::InvalidNumber, "That phone number is invalid."
  rescue RestClient::TooManyRequests
    raise HQTrivia::Errors::TooQuick, "You are verifying too fast."
  end

  # Verify your identity with the code
  # @param code [Integer, String] the code!
  def verify(code)
    @auth = JSON.parse(RestClient.post("https://api-quiz.hype.space/verifications/#{@id}", {"code" => code.to_s}, 'Content-Type': :json))
    @verified = true
  rescue RestClient::BadRequest
    raise HQTrivia::Errors::InvalidCode, "That verification code is incorrect."
  end

  # @return [String, nil] your API key (once you verify)
  def key
    return nil unless @verified

    "Bearer #{@auth['auth']['authToken']}"
  end

  # @return [HQTrivia, nil] a HQTrivia instance, based on the key
  def hq
    return nil unless @verified

    HQTrivia.new("Bearer #{@auth['auth']['authToken']}")
  end
end
