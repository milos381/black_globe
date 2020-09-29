require 'pry'
class Start

  def ask_to_continue
    puts "Would you like to continue to transaction? Type 'yes' for yes and 'no' to exit CLI."
    input = gets.strip
    if input == "yes"
      nil
    elsif input == "no"
      exit
    else
      puts "Sorry, could not accept that. Exiting program..."
      exit
    end
  end


  def hello
    input_one = gets.strip
    if input_one == 'rates'
      puts "Enter first currency code"
      input_f = gets.strip
      puts "Enter secong currency code"
      input_s = gets.strip
      fin = Transaction.new(input_f, input_s)
      puts fin.exchange_rate
      ask_to_continue
    elsif input_one == ""
      nil
    else
      puts "Command not found."
      ask_to_continue
    end


  end
  def first
    puts "Enter first currency code"
    input = gets.strip
  end
  def second
    puts "Enter second currency code"
    gets.strip
  end
  def third
    puts "Enter amount to exchange"
    amount = gets.strip
  end
  def initial_greeting
#   array = [
# " Code   Currency Name",
# "1. AED	UAE Dirham",
# "2. ARS	Argentine Peso",
# "3. AUD	Australian Dollar",
# "4. BGN	Bulgarian Lev",
# "5. BRL	Brazilian Real",
# "6. BSD	Bahamian Dollar",
# "7. CAD	Canadian Dollar",
# "8. CHF	Swiss Franc",
# "9. CLP	Chilean Peso",
# "10. CNY	Chinese Renminbi",
# "11. COP	Colombian Peso",
# "12. CZK	Czech Koruna",
# "13. DKK	Danish Krone",
# "14. DOP	Dominican Peso",
# "15. EGP	Egyptian Pound",
# "16. EUR	Euro",
# "17. FJD	Fiji Dollar",
# "18. GBP	Pound Sterling",
# "19. GTQ	Guatemalan Quetzal",
# "20. HKD	Hong Kong Dollar",
# "21. HRK	Croatian Kuna",
# "22. HUF	Hungarian Forint",
# "23. IDR	Indonesian Rupiah",
# "24. ILS	Israeli New Shekel",
# "25. INR	Indian Rupee",
# "26. ISK	Icelandic Krona",
# "27. JPY	Japanese Yen",
# "28. KRW	South Korean Won",
# "29. KZT	Kazakhstani Tenge",
# "30. MVR	Maldivian Rufiyaa",
# "31. MXN	Mexican Peso",
# "32. MYR	Malaysian Ringgit",
# "33. NOK	Norwegian Krone",
# "34. NZD	New Zealand Dollar",
# "35. PAB	Panamanian Balboa",
# "36. PEN	Peruvian Sol",
# "37. PHP	Philippine Peso",
# "38. PKR	Pakistani Rupee",
# "39. PLN	Polish Zloty",
# "40. PYG	Paraguayan Guarani",
# "41. RON	Romanian Leu",
# "42. RUB	Russian Ruble",
# "43. SAR	Saudi Riyal",
# "44. SEK	Swedish Krona",
# "45. SGD	Singapore Dollar",
# "46. THB	Thai Baht",
# "47. TRY	Turkish Lira",
# "48. TWD	New Taiwan Dollar",
# "49. UAH	Ukrainian Hryvnia",
# "50. USD	United States Dollar",
# "51. UYU	Uruguayan Peso",
# "52. ZAR	South African Rand"
#
#     ]

    puts "--------------------------------------------------------------------------------"
    puts "|                                                                              |"
    puts "|          Welcome to Black Globe, terminal currency exchange office           |"
    puts "|                                                                              |"
    puts "|            To proceed, press ENTER to continue with transaction,             |"
    puts "|                                                                              |"
    puts "|       or type 'rates' to see the conversion rate for desired currencies      |"
    puts "|                                                                              |"
    puts "--------------------------------------------------------------------------------"
    puts ""
    hello
    puts ""
    Transaction.new(first, second, third).result

  end

end
