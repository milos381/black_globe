require "open-uri"
require 'net/http'
require 'json'
require 'pry'
class BlackGlobeApi
  @@all = []
  attr_accessor :inp, :val, :rate_value

  def initialize(inp, val = nil)
    @inp = inp
    @val = val
    @rate_value = []
    @rate_value << self.rate_return
    @@all << self

  end
  def self.all

    @@all
  end
  def rate_value
    @rate_value

  end
  # Setting URL
  def setting
    input = @inp
    url = "https://prime.exchangerate-api.com/v5/33abda6f0da266a7c858930b/latest/" + input
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response_obj = JSON.parse(response)
    response_obj
  end

  # Getting a rate
  def rate_return
    value = @val
    setting['conversion_rates'][value]
  end
  def all_rates

    value = @val
    setting['conversion_rates']

  end


end
#BlackGlobeApi.new("USD", "EUR")
