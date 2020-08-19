class CurrencyExchanger

  class CurrencyNotSupported < StandardError; end

  attr_accessor :from, :to, :money

  def initialize(from, to, money)
    [from, to].each { |code| raise CurrencyNotSupported if self.all.exclude?(code)}


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

  def from=(input)
    puts "Please enter the currency code:"
    gets.strip
  end
  def to=(input)
    puts "Please enter the currency code:"
    gets.strip
  end
  def money=(input)
    puts "Please enter the currency code:"
    gets.strip
  end

  def exchange_rate

    BlackGlobeApi.new(from=(input), to=(input)).rate_return

  end

  def result
    money=(input) * exchange_rate
  end


end
