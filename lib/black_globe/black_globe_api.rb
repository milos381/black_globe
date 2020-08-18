require "open-uri"
require 'net/http'
require 'json'
class BlackGlobeApi


  # Setting URL
  def setting
    url = "https://prime.exchangerate-api.com/v5/33abda6f0da266a7c858930b/latest/USD"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response_obj = JSON.parse(response)
    response_obj
  end
  
  # Getting a rate
  def rate_return
    setting['conversion_rates']['EUR']
  end
end


#do I need to connnect files in between?
#how do I access the rate from my CLI class?
#how do I manipulate with the url link provided?
#how to channge 'USD' and 'EUR'
#how do I know if my CLI class is working?
#how to connect input and variables (@country_one, @country_two, @input)
#do I need to call greeting.rb since outside of class and if yes, how?(not working in BIN file)
