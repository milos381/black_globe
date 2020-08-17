class Greet
  def initialize
    @greet_array = [
    "Hello, traveler!",
    "",
    "Welcome to Black Globe online exchange office! Below is a list of countries and organizations whose currencies we currently work with:",
    ""
    ]
    @country_array = [
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
    ""
    ]
  end
  def countries
    @country_array
  end
  def greeting
    @greet_array
  end
  def greet
    self.greeting.each  do |n|
    puts n
    sleep 1
    end
    self.countries.each  do |n|
    puts n
    sleep 0.1
    end
  end
end

initiate = Greet.new
initiate.greet


