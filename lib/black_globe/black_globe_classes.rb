class CurrencyExchanger

  class CurrencyNotSupported < StandardError; end

  def initialize(from, to, money)
    [from, to].each { |e| raise CurrencyNotSupported if supported_currency.exclude? e }
    
    
    @from = from
    @to = to
    @money = money
  end

  def supported_currency
  array = [
"AED	UAE Dirham",
"ARS	Argentine Peso",
"AUD	Australian Dollar",
"BGN	Bulgarian Lev",
"BRL	Brazilian Real",
"BSD	Bahamian Dollar",
"CAD	Canadian Dollar",
"CHF	Swiss Franc",
"CLP	Chilean Peso",
"CNY	Chinese Renminbi",
"COP	Colombian Peso",
"CZK	Czech Koruna",
"DKK	Danish Krone",
"DOP	Dominican Peso",
"EGP	Egyptian Pound",
"EUR	Euro",
"FJD	Fiji Dollar",
"GBP	Pound Sterling",
"GTQ	Guatemalan Quetzal",
"HKD	Hong Kong Dollar",
"HRK	Croatian Kuna",
"HUF	Hungarian Forint",
"IDR	Indonesian Rupiah",
"ILS	Israeli New Shekel",
"INR	Indian Rupee",
"ISK	Icelandic Krona",
"JPY	Japanese Yen",
"KRW	South Korean Won",
"KZT	Kazakhstani Tenge",
"MVR	Maldivian Rufiyaa",
"MXN	Mexican Peso",
"MYR	Malaysian Ringgit",
"NOK	Norwegian Krone",
"NZD	New Zealand Dollar",
"PAB	Panamanian Balboa",
"PEN	Peruvian Sol",
"PHP	Philippine Peso",
"PKR	Pakistani Rupee",
"PLN	Polish Zloty",
"PYG	Paraguayan Guarani",
"RON	Romanian Leu",
"RUB	Russian Ruble",
"SAR	Saudi Riyal",
"SEK	Swedish Krona",
"SGD	Singapore Dollar",
"THB	Thai Baht",
"TRY	Turkish Lira",
"TWD	New Taiwan Dollar",
"UAH	Ukrainian Hryvnia",
"USD	United States Dollar",
"UYU	Uruguayan Peso",
"ZAR	South African Rand"

    ]
  end

  def exchange_rate
    # implement exchange rate depends on @from and @to
  end

  def result
    @money / exchange_rate
  end
end
