require 'pry'
class BlackGlobeObject

  # class CurrencyNotSupported < StandardError
  #
  #   def message
  #     "Invalid currency code. Plase, try again."
  #   end
  #
  # end

  attr_accessor :from, :to, :money

  def initialize(from = nil, to = nil, money = nil)
    #[from, to].each { |code| raise CurrencyNotSupported if !self.all.include?code}

    @from = from
    @to = to
    @money = money
  end

  def all
    [
      "AED",
      "ARS",
      "AUD",
      "BGN",
      "BRL",
      "BSD",
      "CAD",
      "CHF",
      "CLP",
      "CNY",
      "COP",
      "CZK",
      "DKK",
      "DOP",
      "EGP",
      "EUR",
      "FJD",
      "GBP",
      "GTQ",
      "HKD",
      "HRK",
      "HUF",
      "IDR",
      "ILS",
      "INR",
      "ISK",
      "JPY",
      "KRW",
      "KZT",
      "MVR",
      "MXN",
      "MYR",
      "NOK",
      "NZD",
      "PAB",
      "PEN",
      "PHP",
      "PKR",
      "PLN",
      "PYG",
      "RON",
      "RUB",
      "SAR",
      "SEK",
      "SGD",
      "THB",
      "TRY",
      "TWD",
      "UAH",
      "USD",
      "UYU",
      "ZAR"
    ]

  end


  def money
    @money
  end
  def from
    @from
  end
  def to
    @to
  end
  def exchange_rate

    BlackGlobeApi.new(from, to).rate_return

  end
  # def all_api_rates
  #   BlackGlobeApi.new(from, to).all
  # end

  def result
    final = money.to_i * exchange_rate
    puts "The amount of money after conversion of your #{money} #{from} is #{final} #{to}."
  end

end
#object class!!!!
