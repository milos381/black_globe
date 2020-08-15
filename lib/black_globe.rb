require "black_globe/version"
require "open-uri"
require 'net/http'
require 'json'


class BlackGlobe
  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get(uri)
    response.body
  end
  def parse_json
    result = JSON.parse(self.get_response_body)
    rate = result['conversion_rates']['EUR']
  end
end
get_rate = BlackGlobe.new('"https://prime.exchangerate-api.com/v5/33abda6f0da266a7c858930b/latest/USD"')
