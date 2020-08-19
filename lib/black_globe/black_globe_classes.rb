class CurrencyExchanger

  class CountryNotSupported < StandardError; end

  def initialize(from, to, money)
    #[from, to].each { |e| raise CountryNotSupported if supported_countries.exclude? e }
    
    
    @from = from
    @to = to
    @money = money
  end

  # def supported_countries
  #   YAML.load_file( '/your_path_to_country_yaml' )
  #   # set countries in yml file, not initialize values in class explicitly 
  # end

  def exchange_rate
    # implement exchange rate depends on @from and @to
  end

  def result
    @money / exchange_rate
  end
end
