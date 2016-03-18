# Create hash with cities (key) and area codes (value). This is a global variable
$dial_book = {
  'newyork' => '212',
  'losangeles' => '213',
  'denver' => '303',
  'orlando' => '321',
  'saltlakecity' => '385',
  'atlanta' => '404',
  'baltimore' => '410',
  'seattle' => '425',
  'portland' => '503',
  'sacramento' => '530'
}

# Method to show the area code
def showCityName(city)
  puts "Your requested area code is: #{$dial_book[city]}"
end  

# Let user know the cities and instructions
puts "This program lets you find out the area code for the following cities: 1) New York, 2) Los Angeles, 3) Denver, 4) Orlando, 5) Salt Lake City, 6) Atlanta, 7) Baltimore, 8) Seattle, 9) Portland, 10) Sacramento"

# Loop that keeps program running as long as user presses 'Y'
loop do
  puts "Do you want to lookup the area code for one of these cities? (Y/N)"
  answer = gets.chomp.downcase
  
  if answer != 'y'
    break
  end
  
  # Ask for number (in the future check to make sure it's an integer 1-10)
  puts "Which city? 1) New York, 2) Los Angeles, 3) Denver, 4) Orlando, 5) Salt Lake City, 6) Atlanta, 7) Baltimore, 8) Seattle, 9) Portland, 10) Sacramento"
  city = gets.chomp.to_i
  cityMatch = ''
  
  # Based on selection, update cityMatch variable
  if city == 1
    cityMatch = 'newyork'
  elsif city == 2
    cityMatch = 'losangeles'
  elsif city == 3
    cityMatch = 'denver'
  elsif city == 4
    cityMatch = 'orlando'
  elsif city == 5
    cityMatch = 'saltlakecity'
  elsif city == 6
    cityMatch = 'atlanta'
  elsif city == 7
    cityMatch = 'baltimore'
  elsif city == 8
    cityMatch = 'seattle'
  elsif city == 9
    cityMatch = 'portland'
  elsif city == 10
    cityMatch = 'sacramento'
  else
    puts "That is an invalid selection!"
  end
  
  showCityName(cityMatch)
  
end