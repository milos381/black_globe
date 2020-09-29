require "open-uri"
require 'net/http'
require 'json'
require 'pry'
class Api

  attr_accessor :inp, :val

  def initialize(inp, val = nil)
    @inp = inp
    @val = val
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


end
