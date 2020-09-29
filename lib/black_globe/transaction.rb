require 'pry'
class Transaction



  attr_accessor :from, :to, :money

  def initialize(from = nil, to = nil, money = nil)

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

  def rate_value
    @rate_value

  end

  def exchange_rate

    Api.new(from, to).setting['conversion_rates'][to]

  end

  def result
    final = money.to_i * exchange_rate
    puts "The amount of money after conversion of your #{money} #{from} is #{final} #{to}."
    puts ""
    Start.new.initial_greeting
  end

end
