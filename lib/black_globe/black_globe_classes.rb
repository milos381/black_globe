class BlackGlobe::Cli
  
  attr_accessor :country_one, :country_two, :input_value
  
  def initialize(input, country)
    @country_one = country_one
    @country_two = country_two
    @input_value = input_value
  end
  
  
  def selection_one
  puts "Please type the country of the currency you currently hold:"
  input = gets.strip
  end 
  
  def selection_two
    puts "Now type a country whose currency you would like to exchange for:"
    input = gets.strip
  end
  
  def money_value
    puts "Now type the amount of money you would like to exchange:"
    input = gets.strip
    input.to_i
  end
  
  def selection_one_proceed
    if country_array.include?(selection_one)
      selection_two
    else
      puts "...ops, something went wrong. Let's try again:"
      selection_one
    end
  end
  
  def valid_country_one?
    
  end
  
  def selection_two_proceed
    if country_array.include?(selection_two)
      money_value
    else
      puts "Error. Another try:"
      selection_two
    end
  end
  
  until country_array.include?(selection_one)
    puts "...ops, something went wrong. Let's try again:"
    selection_one
  end
  if country_array.include?(selection_one)
    puts "Great!"
    selection_two
  else
  end
  
  if country_array.include?(selection_two)
    puts "Great!"
    money_value
  end  
end