class CurrencyExchanger

  class CurrencyNotSupported < StandardError; end
    
  attr_accessor :from, :to, :money

  def initialize(from, to, money)
    [from, to].each { |e| raise CurrencyNotSupported if #currency_db == nil}
    
    
    @from = from
    @to = to
    @money = money
  end

  end

  def exchange_rate
    # implement exchange rate depends on @from and @to
  end

  def result
    @money / exchange_rate
  end
  
  
end
