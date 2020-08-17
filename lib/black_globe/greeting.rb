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
"Ukraine"
]
def greet(greet_array, country_array)
  greet_array.each  do |n|
  puts n
  sleep 0.1
  end
country_array.each  do |n|
  puts n
  sleep 0.1
  end
end



