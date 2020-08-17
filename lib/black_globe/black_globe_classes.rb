class BlackGlobeCli
  
  attr_accessor :country_one, :country_two, :input_value
  
  def initialize
    @country_one
    @country_two
    @input_value
  end
  
  
  def selection_one
  puts "Please type the country of the currency you currently hold:"
    @country_one = gets.strip
  end 
  
  def selection_two
    puts "Now type a country whose currency you would like to exchange for:"
    @country_two = gets.strip
  end
  
  def money_value
    puts "Now type the amount of money you would like to exchange:"
    @input_value = gets.strip
    @input_value.to_i
  end
  
  def selection_one_proceed
    if country_array.include?(selection_one)
      selection_two
    else
      puts "...ops, something went wrong. Let's try again:"
      selection_one
    end
  end
  
  def selection_two_proceed
    if country_array.include?(selection_two)
      money_value
    else
      puts "Error. Another try:"
      selection_two
    end
  end
end