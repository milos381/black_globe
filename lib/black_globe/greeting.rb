greet_array = [
"Hello, traveler!",
"",
"Welcome to Black Globe online exchange office! Below is a list of countries and organizations whose currencies we currently work with:",
""
]
country_array = [
"United Arab Emirates",
"Argentina",
"Australia",
"Canada",
"Switzerland",
"Chile",
"China",
"Colombia",
"Dominican Republic",
"Egypt",
"European Union",
"United Kingdom",
"Hungary",
"Israel",
"India",
"Mexico",
"Malaysia",
"Norway",
"Poland",
"Paraguay",
"Russia",
"Sweden",
"Turkey",
"Taiwan",
"Ukraine",
]
def greet(greet_array, country_array)
  greet_array.each  do |n|
  puts n
  sleep 1
  end
country_array.each  do |n|
  puts n
  sleep 0.1
  end
end

def selection_one
  puts "Please type the country of the currency you currently hold:"
  input = gets.strip
end

def selection_two
  input = gets.strip
end

if country_array.include?(selection_one)
  puts "Great!"
  puts "Now type a country whose currency you would like to exchange for:"
  selection_two
else
  puts "...ops, something went wrong. Let's try again:"
  selection_one
end
  